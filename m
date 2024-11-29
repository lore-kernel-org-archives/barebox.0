Delivery-date: Fri, 29 Nov 2024 12:55:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzbF-001qGi-2s
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 12:55:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzbF-0008CG-Os
	for lore@pengutronix.de; Fri, 29 Nov 2024 12:55:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CNX8Pj2nhDwTWUbdvSZZUljdMcNTlc+9nYdamgR8vTk=; b=I6uelWPpvLRNLFtQANlOmXOzPi
	yOttAyeAsgluCMFRK+32+BhFzHKtbO+iwHhswhOg494RFX2iQZum1JGgvMaP+vkKPK9Lf5KvKC/Ka
	2nVen+FeGHrJ6ZSCEeb8+ldNEfUxPl++HdEMefvl4IQUPg7t5qcyCYUvU0hT78CPSvtlsh7x9zg9/
	+wiWhEfcurTuFUBtkjV8mbBvJyohA/vfjAlC72m0H3AtBYWRNs1UchYiPRSrCF3k5pNr8LOfjZ7R4
	TGA+almZ84GjWVhQnGfS71uoNi9kmxr94p2KFxTxZH/HPhtlOc1FCKhJ50jt98RIs7P0ijyKZfeFv
	XVAkC3Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzan-000000000a4-3UX3;
	Fri, 29 Nov 2024 11:55:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzam-000000000Z8-0k0O
	for barebox@bombadil.infradead.org;
	Fri, 29 Nov 2024 11:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=CNX8Pj2nhDwTWUbdvSZZUljdMcNTlc+9nYdamgR8vTk=; b=cqJd0QakbXNFbpaa5H3YvlAopN
	0/WKNqQMpsQRHRT52qgM8wr/GnXSg/hTaqUsM/8r3C1PsJlViVCCzbUzM4wHgkt7qQBSCgbztWGrC
	rOv7HtM5dASXt2PeKaXwPjQUVvOuWxXV52maTb9iaDsj+0Hu+tmacm9u6XYRPH0la/THP+M+lpnYZ
	0PVNSWfIDers3i1NXHEPdD/9SqC1JsgByDgxiwy37QaO0VFdGlkZNBhDaVVzqpokDAwarvzTjWCPR
	vbsubhA56hJlqZBLlg6VYYeTvRy3EMTPN2KyGQ7eIATiWO0NzmnP+gmlDskyGQRyqJsiD9196hP6p
	l0uQkqJA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzai-00000001jUe-3szR
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 11:55:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzai-00081D-5L; Fri, 29 Nov 2024 12:55:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzah-000mKy-0e;
	Fri, 29 Nov 2024 12:55:19 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzah-000whu-2w;
	Fri, 29 Nov 2024 12:55:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241125151228.341441-1-a.fatoum@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
Message-Id: <173288131990.225615.12006024999613992445.b4-ty@pengutronix.de>
Date: Fri, 29 Nov 2024 12:55:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_115521_215206_A669E2CE 
X-CRM114-Status: GOOD (  10.84  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/16] Remove dependency on ld --gc-section in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:12:12 +0100, Ahmad Fatoum wrote:
> We depend on -ffunction-sections -fdata-sections at a lot of places and
> fail the link without due to undefined references. This is especially
> needed for obj-pbl-y code as the files usually have other functions
> depending on barebox proper infrastructure, but that is never called.
> 
> This works so far, but breaks for two things: LTO and using PBL on
> sandbox. Both I have not managed to get the linker not to complain about
> the undefined references in the ultimately unreferenced code.
> 
> [...]

Applied, thanks!

[01/16] scripts: include: add definitions for printk and BUG()
        https://git.pengutronix.de/cgit/barebox/commit/?id=5f714c461371 (link may not be stable)
[02/16] xfuncs: include <malloc.h> for free definition
        https://git.pengutronix.de/cgit/barebox/commit/?id=0b4b8e79bb29 (link may not be stable)
[03/16] pbl: define IN_PBL & IN_PROPER macros globally
        https://git.pengutronix.de/cgit/barebox/commit/?id=9a5dcb2db6d1 (link may not be stable)
[04/16] treewide: replace inverted check for PBL with new IN_PROPER macro
        https://git.pengutronix.de/cgit/barebox/commit/?id=f25049f852b8 (link may not be stable)
[05/16] lib: random: add stubs for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=3c12b1a96d9d (link may not be stable)
[06/16] bootsource: stub out when in PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=a0e525ec732a (link may not be stable)
[07/16] crypto: provide crypto_memneq for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=db767506b43f (link may not be stable)
[08/16] cdev: stub out cdev_read/write for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=5d041e2a5d13 (link may not be stable)
[09/16] libfile: stub out file descriptor API for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=5936a2a6b555 (link may not be stable)
[10/16] environment: stub out environment API for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=2353d896d505 (link may not be stable)
[11/16] of: stub out live tree API when using PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=2b9c420413b0 (link may not be stable)
[12/16] errno: stub out perror/strerror API when built for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=0195ed630f2c (link may not be stable)
[13/16] xfuncs: stub out API when built for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=8bb5da08a0c4 (link may not be stable)
[14/16] stdio: stub out basprintf and friends when built for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=787ca28ad2c3 (link may not be stable)
[15/16] memory: stub out request_barebox_region for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=1fed78b24d3b (link may not be stable)
[16/16] malloc: add PBL stubs
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e966a13c5ae (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



