Delivery-date: Fri, 13 Mar 2026 14:34:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eU-000DMa-2r
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:06 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eC-0008KC-Ha
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aK5qVvRfzqpCKl+/+WUDS3MXS5DH25rh5OwpC0WSUSQ=; b=K57PS1ZlrwrOz6qNWks8vXYNoP
	k0NKfaFo2sUj7uMyPMIRJAoJzTsQqk02s6uFTeHUnlkxbqgG/Ox/hVCYg+/RcTiTty/FWrQF7ssHN
	5iMfRqudNND9Yt1Y7bziDqI4sIjq1JRQpp4tFfxuWFpjiKnA1bWUJF86nNumu+tA1a41Uk63yy1ek
	koTkrt72SHkfQVmI4fE5k3xqAAIztPlzEdIRJfGcmZI1v576c0MqXY8vkGwVrZbl3wD1HgHORz9NJ
	wHAZ9cikYtXdEKwEj85qldi3RRUJAHwXSYIhdh7T5pAqjwUjkJsJaNGR1mpSWWwWKMybsV2XvHbiC
	i0+ZBlEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dG-00000000FlP-0VGn;
	Fri, 13 Mar 2026 13:32:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d8-00000000FXJ-1cO8
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=aK5qVvRfzqpCKl+/+WUDS3MXS5DH25rh5OwpC0WSUSQ=; b=P4KAorSEzWfMovcF5H86KqXJfc
	mM3W3HoFmSC8R4vK/mxq/EKSKsfT+E+vz443tNOKlN286ipOlEWJ0C8Bm6PCaOh4W/hv+PopI9Oc6
	ZqhQzygyWpUvmYK26nf+xxtmE3/WmbZN6f4cVyLNglQxGYlejwiRuZCtGnNnKJ4o6qV0hCuK8MF5Q
	v2Nh5/UtGuXQantJKdpLnL+iZsGT3P6b5koj9sH/KQ6+G5XBSiKTyxB8eGrdSBFNKVpe3QdFZkMhz
	7tlsuJeOqrMxBaYADKE3yPgw7eoTO9RDUbCxiVpFP7LHOdNnuipZxcRU5jbMqGXDWuEE37bQF/7mk
	iWVO43oA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-0000000D9wH-1vWj
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006tK-3O; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005UG-2x;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-1W8a;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Mar 2026 14:25:31 +0100
Message-ID: <20260313132631.2257573-48-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_538580_C20B31F9 
X-CRM114-Status: GOOD (  12.42  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 47/58] ARM: rockchip: atf: Fix memend
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

In rk3588_barebox_entry() we do a:

	endmem = rk3588_ram0_size();

This is wrong, as the function name says it returns the (usable in this
case) RAM size. It doesn't count from 0x0 as we assume, but from
RK3588_DRAM_BOTTOM, which means that endmem is calculated by
RK3588_DRAM_BOTTOM too low.

Fix this and while at it use rk3588_ram_sizes(), as this returns usable
DRAM start and size, so exactly the data we need.

Without this fix we run into trouble on boards with 4GB or more of DRAM.
On these boards the 32bit DRAM space is limited by the beginning of the
internal register space. Without this fix the end of the memory range
we pass to barebox overlaps the internal register space. This likely
only didn't blow up because we ultimately do not use the end of DRAM
as OPTEE_SIZE is substracted from it. OP-TEE is in the lower DRAM on
Rockchip though, so the space we reserve for OP-TEE in the upper DRAM
was just unused.

(cherry picked from commit 502ef444770eebb7d0c7383934864e21f286cb95)

Link: https://lore.barebox.org/20260223-rockchip-optee-v1-2-723493320d42@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index c4ed84aae6ad..a57c8d94e264 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -194,12 +194,14 @@ static int rk3588_fixup_mem(void *fdt)
 
 void __noreturn rk3588_barebox_entry(void *fdt)
 {
-	unsigned long membase, endmem;
+	phys_addr_t membase, memend;
+	resource_size_t memsize;
 
-	membase = RK3588_DRAM_BOTTOM;
-	endmem = rk3588_ram0_size();
+	rk3588_ram_sizes(&membase, &memsize, 1);
 
-	rk_scratch = (void *)arm_mem_scratch(endmem);
+	memend = membase + memsize;
+
+	rk_scratch = (void *)arm_mem_scratch(memend);
 
 	if (current_el() == 3) {
 		void *fdt_scratch = NULL;
@@ -223,7 +225,7 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 	}
 
 	optee_set_membase(rk_scratch_get_optee_hdr());
-	barebox_arm_entry(membase, endmem - membase, fdt);
+	barebox_arm_entry(membase, memsize, fdt);
 }
 
 void rk3576_atf_load_bl31(void *fdt)
-- 
2.47.3



