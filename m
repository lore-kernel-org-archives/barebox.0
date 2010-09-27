Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P0EnO-00043c-IQ
	for barebox@lists.infradead.org; Mon, 27 Sep 2010 14:35:14 +0000
Date: Mon, 27 Sep 2010 16:35:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100927143508.GY23406@pengutronix.de>
References: <1285567954-1394-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1285567954-1394-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] MAKEALL: make it generic
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 27, 2010 at 08:12:34AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> add MAKEALL.cfg example
> 
> it's allow you to compile specific defconfig or ARCH or all
> as
> CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL at91sam9263ek_defconfig
> CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL
> 
> or via config
> 
> CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL at91sam9263ek_defconfig
> CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL
> 
> and for all
> 
> CONFIG=./MAKEALL.cfg ./MAKEALL
> 
> you can specify
> JOBS            jobs
> BUILDDIR        build dir
> LOGDIR          log dir

Would be good to have this example somewhere in the code, maybe as help
text in MAKEALL

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> v2:
> 
> 	remove example
> 
> 	but not use ${LOGDIR:=log} as it not sh
> 
> 	add total compile time
> 
> Best Regards,
> J.
>  MAKEALL |  214 +++++++++++++++++++++++++++++++++++++++++++++------------------
>  1 files changed, 154 insertions(+), 60 deletions(-)
> 
> diff --git a/MAKEALL b/MAKEALL
> index dd0f66b..739163a 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -1,89 +1,183 @@
> -#!/bin/bash
> +#!/bin/sh
>  
> -check_pipe_status() {
> -        for i in  "${PIPESTATUS[@]}"; do
> -		[ $i -gt 0 ] && return 1
> -        done
> -	return 0
> -}
> +# Print statistics when we exit
> +trap exit 1 2 3 15
> +trap print_stats 0
>  
> +# Keep track of the number of builds and errors
> +nb_errors=0
> +errors_list=""
> +nb_defconfigs=0
> +ret=0
>  
> -HERE=$(pwd)
> -AUTOBUILD_DIR=${HERE}/autobuild
> -REPORT=${AUTOBUILD_DIR}/REPORT
> +here=$(pwd)
>  
> -if [ -d "${AUTOBUILD_DIR}" ]; then
> -	echo "warning: ${AUTOBUILD_DIR} exists, press <ctrl-c> to exit or wait for 3 seconds"
> -	sleep 3
> -	rm -fr ${AUTOBUILD_DIR}
> -fi
> +time_start=$(date +%s)
>  
> -mkdir -p ${AUTOBUILD_DIR}
> +#-----------------------------------------------------------------------
>  
> -BOARDS="${BOARDS} sandbox"
> -sandbox_ARCH=sandbox
> -sandbox_CROSS_COMPILE=
> +print_stats() {
> +	echo ""
> +	echo "--------------------- SUMMARY ----------------------------"
> +	echo "defconfigs compiled: ${nb_defconfigs}"
> +	time_stop=$(date +%s)
> +	time_diff=$((${time_stop} - ${time_start}))
> +	printf "compiled in %4is\n" ${time_diff}
> +	if [ ${nb_errors} -gt 0 ] ; then
> +		echo "defcongids with warnings or errors: ${nb_errors} (${errors_list} )"
> +	fi
> +	echo "----------------------------------------------------------"
> +
> +	exit ${ret}
> +}
>  
> -BOARDS="${BOARDS} ipe337"
> -ipe337_ARCH=blackfin
> -ipe337_CROSS_COMPILE=bfin-elf-
> +if [ ! "${JOBS}" ] ; then
> +	#linux, BSD, MacOS
> +	nb_cpu=`getconf _NPROCESSORS_ONLN`
> +
> +	if [ $? -gt 0 ]
> +	then
> +		nb_cpu=1
> +	fi
>  
> -BOARDS="${BOARDS} netx_nxdb500"
> -netx_nxdb500_ARCH=arm
> -netx_nxdb500_CROSS_COMPILE=arm-v4t-linux-gnueabi-
> +	JOBS=$((${nb_cpu} * 2))
> +fi
>  
> -BOARDS="${BOARDS} pcm030"
> -pcm030_ARCH=ppc
> -pcm030_CROSS_COMPILE=powerpc-603e-linux-gnu-
> +if [ ! "${LOGDIR}" ]
> +then
> +	LOGDIR="log"
> +fi
>  
> -BOARDS="${BOARDS} pcm037"
> -pcm037_ARCH=arm
> -pcm037_CROSS_COMPILE=arm-1136jfs-linux-gnueabi-
> +if [ ! "${BUILDDIR}" ]
> +then
> +	BUILDDIR="makeall_builddir"
> +fi
>  
> -BOARDS="${BOARDS} pcm038"
> -pcm038_ARCH=arm
> -pcm038_CROSS_COMPILE=arm-v4t-linux-gnueabi-
> +[ -d "${LOGDIR}" ] || mkdir ${LOGDIR} || exit 1
>  
> -for board in ${BOARDS}; do
> +if [ ! "${CONFIG}" ] && [ ! "${CROSS_COMPILE}" ]
> +then
> +	echo "You need to specify a CONFIG or a CROSS_COMPILE"
> +	exit 1
> +fi
>  
> -	time_start=$(date +%s)
> -	arch=${board}_ARCH
> -	cross_compile=${board}_CROSS_COMPILE
> -	mkdir -p ${AUTOBUILD_DIR}/${board}
> -	printf "%-20s defconfig: " ${board} | tee -a ${REPORT}
> +if [ "${CONFIG}" ]
> +then
> +	source "${CONFIG}"
> +fi
>  
> -	make -C ${HERE} \
> -		O=${AUTOBUILD_DIR}/${board} \
> -		ARCH=${!arch} \
> -		${board}_defconfig \
> -		> ${AUTOBUILD_DIR}/${board}.log 2>&1
> +check_pipe_status() {
> +	for i in "${PIPESTATUS[@]}"
> +	do
> +		[ $i -gt 0 ] && return 1
> +	done
> +	return 0
> +}
>  
> +do_build_target() {
> +	local arch=$1
> +	local target=$2
> +	local target_time_start=$(date +%s)
> +	local log_report="${LOGDIR}/${target}/report.log"
> +	local log_err="${LOGDIR}/${target}/errors.log"
> +
> +	rm -rf "${BUILDDIR}"
> +	mkdir -p "${BUILDDIR}"
> +	mkdir -p "${LOGDIR}/${target}"
> +	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
> +
> +	cross_compile=`eval echo '$CROSS_COMPILE_'${target}`
> +	if [ ! "${cross_compile}" ]
> +	then
> +		cross_compile=`eval echo '$CROSS_COMPILE_'${arch}`
> +		if [ ! "${cross_compile}" ]
> +		then
> +			cross_compile=${CROSS_COMPILE}
> +		fi
> +	fi
> +
> +	MAKE="make -C ${here} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
> +	${MAKE} -j${JOBS} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
> +
> +	printf "Configure: " | tee -a "${log_report}"
>  	check_pipe_status
>  	if [ "$?" = "0" ]; then
> +		printf "OK     \n" | tee -a "${log_report}"
>  
> -		printf "OK     " | tee -a ${REPORT}
> -		printf "compile: " ${board} | tee -a ${REPORT}
> +		${MAKE} -j${JOBS} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
>  
> -		make -C ${HERE} \
> -			O=${AUTOBUILD_DIR}/${board} \
> -			ARCH=${!arch} \
> -			CROSS_COMPILE=${!cross_compile} \
> -			> ${AUTOBUILD_DIR}/${board}.log 2>&1
> +		printf "Compile: " ${target} | tee -a "${log_report}"
>  
>  		check_pipe_status
>  		if [ "$?" = "0" ]; then
> -			printf "OK     " | tee -a ${REPORT}
> +			printf "OK     \n" | tee -a "${log_report}"
> +			${cross_compile}size ${BUILDDIR}/barebox | tee -a "${log_report}"
>  		else
> -			printf "FAILED " | tee -a ${REPORT}
> +			printf "FAILED \n" | tee -a "${log_report}"
> +			ret=1
>  		fi
> +	else
> +		printf "FAILED \n" | tee -a "${log_report}"
> +		printf "Compile: ------ \n" | tee -a "${log_report}"
> +		ret=1
> +	fi
>  
> +	if [ -s "${log_err}" ] ; then
> +		nb_errors=$((nb_errors + 1))
> +		errors_list="${errors_list} ${target}"
>  	else
> -		printf "FAILED " | tee -a ${REPORT}
> -		printf "compile: ------ " | tee -a ${REPORT}
> +		rm "${log_err}"
>  	fi
>  
> -	time_stop=$(date +%s)
> -	time_diff=$(($time_stop - $time_start))
> -	printf "%4is\n" $time_diff | tee -a ${REPORT}
> -done
> +	nb_defconfigs=$((nb_defconfigs + 1))
> +
> +	target_time_stop=$(date +%s)
> +	target_time_diff=$((${target_time_stop} - ${target_time_start}))
> +	printf "Compiled in %4is\n" ${target_time_diff} | tee -a "${log_report}"
> +}
> +
> +do_build() {
> +	local arch=$1
> +
> +	for i in arch/${arch}/configs/*_defconfig
> +	do
> +		local target=$(basename $i)
> +
> +		do_build_target ${arch} ${target}
> +	done
> +}
>  
> +do_build_all() {
> +	local build_target=0
> +
> +	for i in arch/*
> +	do
> +		local arch=$(basename $i)
> +
> +		if [ -d $i ]
> +		then
> +			do_build ${arch}
> +			build_target=$((build_target + 1))
> +		fi
> +	done
> +
> +	return $build_target
> +}
> +
> +if [ ! "${ARCH}" ] || [ ! -d arch/${ARCH} ]
> +then
> +	do_build_all
> +	if [ $? -eq 0 ]
> +	then
> +		echo "You need to specify the ARCH or CROSS_COMPILE_<arch> or CROSS_COMPILE_<target> in your config file"
> +		exit 1
> +	fi
> +	exit 0
> +fi
> +
> +if [ $# -eq 0 ]
> +then
> +	do_build ${ARCH}
> +else
> +	do_build_target ${ARCH} $1
> +fi
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
