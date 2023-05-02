Delivery-date: Tue, 02 May 2023 09:41:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkdC-0027lP-T3
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:41:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkdA-0002gf-Ka
	for lore@pengutronix.de; Tue, 02 May 2023 09:41:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FR5SGPqYvQ1pLkvHzSnOWzm+PRxGsv6cBKVfPQyuA38=; b=ToBhEeloJbpLB/9tm/5Zl/TWCG
	QPywv8due67WwWXnvjvWXfDb4xoMwnvOpeJ7+h5Y5JDue4tiSGfni/kPyaB8LBPdC2qI9ealp/a85
	mrADOnl/trK7QNbQde0ygWUWyFrpIpqkevNSmbps5EEb1lm9U94gOYaw/wdLvKgHBFnTak1rGowE/
	AGWBi9p0jExU7TYdBHewy3UzbgEwT+rhNkFnW846bYANuubl81ZurDQkbQ5vatLa+aPY9qsGWj8Yg
	w1ulTs8CuA2ot7xh7H7V6dIqfIJN+YWakEXV/FvDycZU5lxkp4gARSSGEGTFygJPgWnj7eudwwuvj
	AY5MyiQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbq-000Uyv-1f;
	Tue, 02 May 2023 07:39:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbl-000Utv-0j
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001y7-5w; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbf-000XPu-Jg; Tue, 02 May 2023 09:39:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001Mdj-BE; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:16 +0200
Message-Id: <20230502073925.266116-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502073925.266116-1-s.hauer@pengutronix.de>
References: <20230502073925.266116-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003933_288571_DE5EA170 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/10] MAKEALL: Configure before setting up CROSS_COMPILE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do make defconfig before setting up CROSS_COMPILE. This will allow
us to select a ARM 32/64 bit toolchain from .config in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index b4cf4c649b..ad95cfe040 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -98,6 +98,12 @@ do_build_target() {
 
 	tmp=$(echo "${target}" | tr - _)
 
+	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
+	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
+
+	check_pipe_status
+	configure_result="$?"
+
 	cross_compile=$(eval echo '$CROSS_COMPILE_'${tmp})
 	cross_compile_set=$(eval echo '${CROSS_COMPILE_'${tmp}'+set}')
 	if [ "${cross_compile_set}" = "" ]
@@ -110,25 +116,20 @@ do_build_target() {
 		fi
 	fi
 
-	MAKE="make -j${JOBS} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
-	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
-
-	check_pipe_status
-	result="$?"
-
 	printf "Configure: " | tee -a "${log_report}"
 
-	if [ "$result" = "0" ]; then
+	if [ "$configure_result" = "0" ]; then
 		printf "OK     \n" | tee -a "${log_report}"
 
+		MAKE="make -j${JOBS} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
 		${MAKE} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
 
 		check_pipe_status
-		result="$?"
+		compile_result="$?"
 
 		printf "Compile: " ${target} | tee -a "${log_report}"
 
-		if [ "$result" = "0" ]; then
+		if [ "$compile_result" = "0" ]; then
 			printf "OK     \n" | tee -a "${log_report}"
 			${cross_compile}size ${BUILDDIR}/barebox | tee -a "${log_report}"
 		else
-- 
2.39.2



