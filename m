Delivery-date: Mon, 12 Jun 2023 14:48:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gyX-003ptL-QX
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:48:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gyV-0004ww-Bk
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:48:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a7y1za80/CMcZQFGPtwf2La47w//dI5zCJD3UXbDJ+A=; b=nhTKMr49PLagp75+JssKCwhr3P
	MwRnL2iQ7ivjXB3eBxMBnyiL3BW9UL5Z6qOiS/6lgTyc/6Ib16mtKzB7ubIjLRZtrlHzotlQEG8KN
	TrM4/A9eRLAvmBxAAfR+UJqT9Rq3Z+qBPEr/J6QawwpmNScQdEj3N3jH9UC0ZYWSApALQybYIIQXR
	aK3sTEfm/S4O1hqdthmhxgenmVB1ut1BVNTLmpPhKnwCCR8QmH1fGmm1AAjnIbm8chkwRsaqSmBsV
	NGs5GP7Zqc839t5BgiL0vbNahDo39d+fP4Edo7eEhO1HUKkNQtyLSbT55Xm7WImJCjYF2/7GvMEZ6
	HlJCcpYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gxU-0043n5-2T;
	Mon, 12 Jun 2023 12:47:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gxS-0043mZ-1K
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:47:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8gxR-0004i4-6E; Mon, 12 Jun 2023 14:47:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8gxQ-006tSD-HX; Mon, 12 Jun 2023 14:47:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8gxP-004X9u-RQ; Mon, 12 Jun 2023 14:47:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:47:39 +0200
Message-Id: <20230612124739.1080762-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_054742_465903_19FCAA6D 
X-CRM114-Status: GOOD (  10.17  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] MAKEALL: source defconfig after determining correct CROSS_COMPILE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ARM 32- and 64-bit have different GCC compiler backends, but the same
architecture in barebox. MAKEALL handles that by sourcing the defconfig
and then looking for CONFIG_CPU_64 before continuing to build. This is
problematic, because CROSS_COMPILE can only be set after that, so we may
end up with more dynamic Kconfig options being wrongly set the first
time, because CROSS_COMPILE wasn't correctly set. Fix this by always
sourcing the defconfig again once we determine the correct
CROSS_COMPILE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index a4e268d54cf8..d3a289fd3839 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -91,21 +91,9 @@ do_build_target() {
 
 	rm -rf "${BUILDDIR}"
 	mkdir -p "${LOGDIR}/${target}"
-	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
-
-	tmp=$(echo "${target}" | tr - _)
 
 	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
-	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
-	for i in ${KCONFIG_ADD}; do
-		./scripts/kconfig/merge_config.sh -m -O \
-			${BUILDDIR} ${BUILDDIR}/.config $i \
-			2>&1 > "${log_report}" | tee "${log_err}"
-	done
-	${MAKE} olddefconfig 2>&1 > "${log_report}" | tee "${log_err}"
-
-	check_pipe_status
-	configure_result="$?"
+	${MAKE} ${target} &>/dev/null
 
 	if [ ${arch} = "arm" ]; then
 		grep -q "CONFIG_CPU_64=y" ${BUILDDIR}/.config
@@ -114,6 +102,8 @@ do_build_target() {
 		fi
 	fi
 
+	tmp=$(echo "${target}" | tr - _)
+
 	cross_compile=$(eval echo '$CROSS_COMPILE_'${tmp})
 	cross_compile_set=$(eval echo '${CROSS_COMPILE_'${tmp}'+set}')
 	if [ "${cross_compile_set}" = "" ]
@@ -126,12 +116,24 @@ do_build_target() {
 		fi
 	fi
 
+	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
+	MAKE="${MAKE} CROSS_COMPILE=${cross_compile}"
+	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
+	for i in ${KCONFIG_ADD}; do
+		./scripts/kconfig/merge_config.sh -m -O \
+			${BUILDDIR} ${BUILDDIR}/.config $i \
+			2>&1 > "${log_report}" | tee "${log_err}"
+	done
+	${MAKE} olddefconfig 2>&1 > "${log_report}" | tee "${log_err}"
+
+	check_pipe_status
+	configure_result="$?"
+
 	printf "Configure: " | tee -a "${log_report}"
 
 	if [ "$configure_result" = "0" ]; then
 		printf "OK     \n" | tee -a "${log_report}"
 
-		MAKE="make -j${JOBS} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
 		${MAKE} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
 
 		check_pipe_status
-- 
2.39.2



