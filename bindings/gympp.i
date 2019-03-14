%module gympp

%{
#define SWIG_FILE_WITH_INIT
#include "gympp/Common.h"
#include "gympp/Environment.h"
#include "gympp/GymFactory.h"
#include "gympp/gyms/Ignition.h"
#include "gympp/Space.h"
%}

%naturalvar;

%include <std_string.i>
%include <std_vector.i>

// Convert python list to std::vector
%template(Vector_i) std::vector<int>;
%template(Vector_u) std::vector<size_t>;
%template(Vector_f) std::vector<float>;
%template(Vector_d) std::vector<double>;

%include "gympp/Common.h"
%template(BufferContainer_i) gympp::BufferContainer<int>;
%template(BufferContainer_u) gympp::BufferContainer<size_t>;
%template(BufferContainer_f) gympp::BufferContainer<float>;
%template(BufferContainer_d) gympp::BufferContainer<double>;
%template(get_i) gympp::data::Sample::get<int>;
%template(get_u) gympp::data::Sample::get<size_t>;
%template(get_f) gympp::data::Sample::get<float>;
%template(get_d) gympp::data::Sample::get<double>;
%template(getBuffer_i) gympp::data::Sample::getBuffer<int>;
%template(getBuffer_u) gympp::data::Sample::getBuffer<size_t>;
%template(getBuffer_f) gympp::data::Sample::getBuffer<float>;
%template(getBuffer_d) gympp::data::Sample::getBuffer<double>;
%template(RangeFloat) gympp::Range<float>;
%template(RangeDouble) gympp::Range<double>;

%include "optional.i"
%template(Optional_i) std::optional<int>;
%template(Optional_u) std::optional<size_t>;
%template(Optional_f) std::optional<float>;
%template(Optional_d) std::optional<double>;
%template(Optional_state) std::optional<gympp::State>;
%template(Optional_sample) std::optional<gympp::data::Sample>;

%include <std_shared_ptr.i>
%shared_ptr(gympp::spaces::Space)
%shared_ptr(gympp::spaces::details::TBox<double>)
%shared_ptr(gympp::spaces::Discrete)

%include "gympp/Space.h"
%template(Box_d) gympp::spaces::details::TBox<double>;

%shared_ptr(gympp::Environment)
%include "gympp/Environment.h"
%include "gympp/GymFactory.h"