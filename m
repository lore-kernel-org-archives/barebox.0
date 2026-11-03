Delivery-date: Tue, 03 Nov 2026 22:32:56 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOM7j-006wXN-2t
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 22:32:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B1A3B200FB6
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 22:32:51 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=T+9kxoSx;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=c1J4qmK2;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=qofaAV1i;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793741572;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=/Y/IEA1JSaAjjt27I/SrXpZrkZEISwMnCSsy8NxFxpg=;
	b=JOVGTHdI1KkBuZltFbkwtRB/MqorWwv3zeVu3Jmv09b7qekAQq0qYjFeqhDcdLAnXZZNAt
	Ho5cHj31tGalhWcZyLn1D5bXaTMzzxuM1v1rw8IzODgNft900tmHkuxMgbpAiyIwvrQqiK
	bdZ6ZnP8m9neYBhCa8S/aXIW2jFz9r+kVBs7XTl7r27mOvwvL19RhDcNN60G8mBjQFdJrZ
	CA0kWMhR/fq3XFRm6H1WWCV+9GvGgY32qYJPSmw1VpaPli7vbCOYKfdIZRqX9ojApyzgET
	26OW16TsxJ4GbYPXUCq+gElAyNWb5LjXeqXgg1b/yxu3W6lC7AdMvcrX0Hgnag==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=T+9kxoSx;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=c1J4qmK2;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=qofaAV1i;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793741572; a=rsa-sha256;
	cv=none;
	b=dqx1JpQ//sU/vELVFI+610gAIeqWSCfnrE121Mnn/I2W1Gfn8ncvo7g9C2rjq1xMsBcX4R
	JZ0VEU1r6Ax96WtVqfMetRiAVxmdNZK+ozim3HxQ8wBdqf1IPmsu2hIUxLavNb4dQdwqiv
	xHJqybQHfKPHt19Gs7DgS8K9HFNIqltT8ZGLN60XeeTM53kMB5aZyvCG5c/C4W1n9h2YRa
	SCWa4sefcjaimbPFFdMOIO3pcyP8ZhlVbXYhgTUreSADHIcWIWlX8oD5QS9cN+9wcOELIX
	tDJy6gF+s7yEuY+ocqeEC3LmxWamvGl1qpKpMjO+uUNvaa1F5lVS8gb3brz8xA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=/Y/IEA1JSaAjjt27I/SrXpZrkZEISwMnCSsy8NxFxpg=; b=T+9kxoSxpT/PG8
	8f/e/fXbboH04XlNILZ1dTacQPukJqPVVQe3ekneIx7f+8nJW3BQvleE41hOLdfA549n/lgg5TYlk
	KUSEOSIYQdRV8jO7FKDVizx8pxwOi0HB8ESjKqnEcRjexhE9QkhQEsBndRqGpwvc7lai6NXxuNPQm
	vk+ItVkCH0jjwUAS16Fyrh2W0pL0ytxQXVO/bllDZoLqzfOJx0X2kSKUDh6ryXs+a2ZILtlTR1y2y
	09WuRHREsgyS82AiwHzTNzNGrwGBZxvy/FrAheLR6mKu2uhbAhue1M1fLQSd1xbwe8ocKtblRRisY
	ud5yf6AR5l0DmYKb5ebw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6P-00000003iBw-2pBp;
	Tue, 03 Nov 2026 21:31:33 +0000
Received: from mx04.puzzle.ch ([2a06:c00::560f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6K-00000003i3g-2cKp
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 21:31:32 +0000
Received: from mailstore02.cloud.puzzle.ch (mail.puzzle.ch [IPv6:2a06:c00::5086])
	by mx04.puzzle.ch (Postfix) with ESMTPS id C72EF112;
	Tue,  3 Nov 2026 22:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211230;
	t=1793741478;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/Y/IEA1JSaAjjt27I/SrXpZrkZEISwMnCSsy8NxFxpg=;
	b=c1J4qmK2vuusfsKzBAoNjyWbS9kXHz1hjj7ol4erB5VW2gd1fiXVFVi+SgxmpvLmY20eVD
	jX0AALO24AHlVSrSbeP9BQ00+3539Do4j0cj5SRfdFtDUoifmGVBXPe4m5qnZUarwVcDB8
	mtauxl3T+Yd/V12IE+EsfqNPBObl+EKF0sECyaawqTEi5aU4SxTPIMUb1yA86VT9pmMRf1
	YQ0n7FdAHHK2jaoaNTRIxrzztvDug4imp2249ogRiDtB02RRvPxn5E811mgST/3hu3k7Au
	Fw1PJfWKH0AteMOlPVSUeRLsgRk2RW5f1drtnIyNAo4rbvY/2Fnz+EorlxHofg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211209;
	t=1793741478;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/Y/IEA1JSaAjjt27I/SrXpZrkZEISwMnCSsy8NxFxpg=;
	b=qofaAV1iFUlFADM/+QCCUE+/FMl3hVL0T1yPav9+Qgp97IqMYlZZ6X2Tx+pQNdHgZ+Leik
	eKhMDa7A6nYDCXXMNKIIQT2zfHoIp4pQW3kByRG9cq7cFbz+vG4Q567hYmPPpJCtqgkdJM
	JL7Pd3Csg0JAS3yO0sAObpe9VId+CQa5umvfO6wvmVIB5cLtTdtYbUH6CuzToeOtREsUPQ
	pLuydLvIr/CaEaBRFqm2CNXv8li1QPVv/A5nnhvj1txIlS3LkSYlS5bFaYEE9qLGu0EWx2
	+Io5Y721uum4b81dnqkZ2XraOxHqTMWiYhNgkC2Pf1Eyv94QWlujzHlvM5wokA==
From: Michael Grzeschik <grzeschik@puzzle.ch>
x-ms-reactions: disallow
Date: Tue, 03 Nov 2026 22:31:07 +0100
Subject: [PATCH 1/6] images: mvebu: skip images whose binary header is
 missing
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261103-orion_kw_mvebu-v1-1-86442c0d283e@puzzle.ch>
References: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
In-Reply-To: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Michael Grzeschik <grzeschik@puzzle.ch>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2893; i=grzeschik@puzzle.ch;
 h=from:subject:message-id; bh=tUbQUPm6CUE9KiudAKoIP3GY2lvd8aNgqyL44cLHrdg=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBq6lKk0T4qIuO1IcVpQ1akwMSMZvmfQOsntvvHe
 18UUui5gCWJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaupSpAAKCRC/aVhE+XH0
 qyrkEACa5WJtLGupKIJa1rftKW5Fi2iclZsAdYPf9YKVV3yIMzvy1F3MJskdY/Je26M7LQwTL9E
 P3/VEw/4kWzWuhRC/NqPWsFYsERJVmJUCbOdyX1K+D0c6FoMP3kiOzGCxGrpt5WdM01+mjuwATo
 SOERcTjKwIC/kXk3JPGuSRLnAKa0rJCQafDk9lg7jbzWq0kwSR+GDrpCJRyLU0coEjsE1T8zjUR
 /u1QpGRDcC4L6vWzqfDqt/Qr5phnIIWpidO14s2yloi3eD1cdmkMTeecjOEXKgOt/BFbCAPs8OB
 x5RYB15PYWnT57Pkh2MlmiXR5NvpYNKF9ouWXPElBfzIyYA5LOsIFbQSwWZEWHoK9FuDRTtgZId
 O3qDs2UTmb+07kX49wBEdWthD00WpcYHxnceLpYWGSX7pLWM4udM/4YrOGiJF6zMeUB79Q1pwAL
 c9jGVn9eoODdgIxVrOKqvRM9w0v8Q6SrjjNpMrpGjTa3WOTmUVM6kEVTwxg8DSo2krLOk5GBXYi
 x63w6M41qqpQRrOliTyJIT1inEIOHcTNoBQzqMecJCPqB0N+H9EcvC3Ev29NyRF1agfUmiox1wj
 NKRn0jr3eoyEBxt1GJ7RrvL6EhG17l3fMKHbjN0RYWOtSIkSi3zZkWwanOHmenvRB9U1dXdrbFR
 AxKXjE2k+fDeKGA==
X-Developer-Key: i=grzeschik@puzzle.ch; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_133128_921007_4B55B9A0 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The Armada 370/XP/38x boards embed DDR training code from
   arch/arm/boards/*/binary.0, which is not part of barebox. A missing file stopped
    the whole build: No rule to make target 'arch/arm/boards/globalscale-mirabox/binary.0',
    needed by 'images/start_globalscale_mirabox.pblb.mvebu1img'. Stop. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B1A3B200FB6
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[puzzle.ch,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,puzzle.ch:s=20211230,puzzle.ch:s=20211209];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MISSING_XM_UA(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,puzzle.ch:+]
X-Rspamd-Action: no action
X-Stat-Signature: mn8cxiyhqcjzuob4tfxfqgajp49h6wgf

The Armada 370/XP/38x boards embed DDR training code from
arch/arm/boards/*/binary.0, which is not part of barebox. A missing file
stopped the whole build:

  No rule to make target 'arch/arm/boards/globalscale-mirabox/binary.0',
  needed by 'images/start_globalscale_mirabox.pblb.mvebu1img'.  Stop.

so mvebu_defconfig could not be built without the firmware for every
board, not even for boards that need none.

Use the missing firmware handling that the Rockchip images already use:
depend on the binary headers only if they exist, and if one is missing,
record it in <image>.missing-firmware and create an empty image. The
images step then reports the image as skipped, or fails the build with
CONFIG_MISSING_FIRMWARE_ERROR=y.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Michael Grzeschik <grzeschik@puzzle.ch>
---
 images/Makefile.mvebu | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 7c918cb9f1..d4f2476aae 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -8,11 +8,24 @@
 $(obj)/%.kwbimg: $(obj)/% FORCE
 	$(call if_changed,kwb_image)
 
+# Binary headers (DDR training code, arch/arm/boards/*/binary.0) are not part
+# of barebox. If one is missing, report the image as missing firmware instead
+# of failing the build, so multi-board builds produce all other images. The
+# image is only skipped unless CONFIG_MISSING_FIRMWARE_ERROR=y.
+mvebu_missing_binhdr = $(filter-out $(wildcard $(BINHDR_$(@F))),$(BINHDR_$(@F)))
+
+define mvebu_binhdr_image
+	$(Q)$(if $(mvebu_missing_binhdr), \
+		echo $(patsubst $(srctree)/%,%,$(mvebu_missing_binhdr)) >$@.missing-firmware, \
+		rm -f $@.missing-firmware)
+	$(call if_changed,$(if $(mvebu_missing_binhdr),0size,$(1)))
+endef
+
 $(obj)/%.mvebu0img: $(obj)/% scripts/mvebuimg FORCE
-	$(call if_changed,mvebu0_image)
+	$(call mvebu_binhdr_image,mvebu0_image)
 
 $(obj)/%.mvebu1img: $(obj)/% scripts/mvebuimg FORCE
-	$(call if_changed,mvebu1_image)
+	$(call mvebu_binhdr_image,mvebu1_image)
 
 KWBOPTS = -c -d 0x1000000 -e 0x1000000
 
@@ -127,6 +140,6 @@ pblb-$(CONFIG_MACH_USI_TOPKICK) += start_usi_topkick
 image-$(CONFIG_MACH_USI_TOPKICK) += barebox-usi-topkick.img
 image-$(CONFIG_MACH_USI_TOPKICK) += barebox-usi-topkick-2nd.img
 
-# ensure that an image depends on its included binhdrs
-$(foreach f,$(pblb-y),$(eval $$(obj)/$f.pblb.mvebu0img: $$(BINHDR_$f.pblb.mvebu0img)))
-$(foreach f,$(pblb-y),$(eval $$(obj)/$f.pblb.mvebu1img: $$(BINHDR_$f.pblb.mvebu1img)))
+# ensure that an image depends on its included binhdrs, as far as they exist
+$(foreach f,$(pblb-y),$(eval $$(obj)/$f.pblb.mvebu0img: $$(wildcard $$(BINHDR_$f.pblb.mvebu0img))))
+$(foreach f,$(pblb-y),$(eval $$(obj)/$f.pblb.mvebu1img: $$(wildcard $$(BINHDR_$f.pblb.mvebu1img))))

-- 
2.53.0



