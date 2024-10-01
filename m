Delivery-date: Tue, 01 Oct 2024 12:34:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaDX-004vr0-1o
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 12:34:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaDY-0000BY-0b
	for lore@pengutronix.de; Tue, 01 Oct 2024 12:34:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eXUQwcMs6M5woUp8lwrqC8zgw1yKeC0lB1celhg3u98=; b=FklPIzIlVdLWlpL7rBNWrLFSBM
	h7urRgYBMWUmmILY714OlYSje0T7t83PlwipnFHoa1ODb/CsnwB/mreZqiD+EHZrAL55JASxTlfbc
	sFj2jVZxP+rS8h9WJUgGbqEJH4p+l99D4a26bIH2w0UR2X8y3MPLPN738cc0SEjGUAKG6Y1nyyUHJ
	dzP5Jd+3buxLyDhPXgZeBDMWuf8sHFvOzh+22Cs1QknPMuQXExj2ESyHPRYeH92qlD3GunC8fHwaV
	3G0NctIMJ93pG1IMfI7+OZ6uzRFOajKxfPEpkO3HsYN7B1dXzjeu2t3r+H6xlFkRLD2GUdnhQvOX7
	wQQyVHdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svaD1-00000002MVR-1PO3;
	Tue, 01 Oct 2024 10:34:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svaCP-00000002MS9-1B3Q
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 10:33:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaCN-00084R-Qg; Tue, 01 Oct 2024 12:33:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaCN-002qxK-E6; Tue, 01 Oct 2024 12:33:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaCN-004KUl-1D;
	Tue, 01 Oct 2024 12:33:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: afa@pengutronix.de
In-Reply-To: <20241001095741.920605-1-s.hauer@pengutronix.de>
References: <20241001095741.920605-1-s.hauer@pengutronix.de>
Message-Id: <172777882337.1032086.365231160353899463.b4-ty@pengutronix.de>
Date: Tue, 01 Oct 2024 12:33:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_033345_359735_EFAACD9B 
X-CRM114-Status: GOOD (  10.22  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: Fix erase_grp_size extraction for SD with
 csd_struct v0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Oct 2024 11:57:41 +0200, Sascha Hauer wrote:
> In mci_extract_erase_group_size() we test for (IS_SD() && csd_struct_v1)
> which means that for non csd_struct_v1 SD cards we fall into the MMC
> path and evaluate ext_csd. This doesn't exist for SD cards and the
> code crashes with a NULL pointer deref.
> 
> Fix this by always falling into the SD case for SD cards. Add the
> missing erase_grp_size extraction for csd_struct v0 cards. The code
> for that is taken from the corresponding Linux code.
> 
> [...]

Applied, thanks!

[1/1] mci: Fix erase_grp_size extraction for SD with csd_struct v0
      https://git.pengutronix.de/cgit/barebox/commit/?id=98bd0bee79f4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



