Delivery-date: Mon, 22 Jan 2024 11:13:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRrJ8-00BJCT-0W
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 11:13:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRrJ8-0006vV-OH
	for lore@pengutronix.de; Mon, 22 Jan 2024 11:13:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=geBBa5SzYsT9uH30aw1zV/UWj1ff4bEfsgo7crhqrP0=; b=akqbtL4JZWC0HRUq8laK4LDsPa
	0pJ6w58He/3OSyA9E3iHX9tG61IeBQyazhO5p2YEJL11muwvA3WJtPwuc02KM9qDk6MDfu+7hVnWk
	tYAG5M7w+x8g826ZxcOTF5qgly/cAEqk2Ayck8yE4ubXi6gZlsTPafCpZJ4TyBB5ZD+D57AtJSo3S
	EbXmVQhIKtw1uQepqiim4MohwFv9xA895GzgNAMSTCcZIPhdALt9mVsKGD40830O4Oz5aHSOZohz9
	EtM9MG2feA8e6I5OckHm6V/DAPqdx7Br7v8ylTqeZGiIWg8C/b2JofhkrciC4uUXWXnk2leXzHDOv
	EIYj6dBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrHx-00BSXN-2s;
	Mon, 22 Jan 2024 10:12:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrHs-00BSUt-2e
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 10:12:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRrHp-0006kq-5r; Mon, 22 Jan 2024 11:12:13 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRrHo-001Yxm-Pl; Mon, 22 Jan 2024 11:12:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRrHo-008DKz-2I;
	Mon, 22 Jan 2024 11:12:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
Message-Id: <170591833270.1957842.6242100760017588251.b4-ty@pengutronix.de>
Date: Mon, 22 Jan 2024 11:12:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_021216_857471_8408F149 
X-CRM114-Status: UNSURE (   9.03  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/19] pmdomain: imx: add i.MX8MP HSIO blk-ctrl driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Jan 2024 17:25:51 +0100, Ahmad Fatoum wrote:
> Unlike other i.MX8M variants, TF-A on i.MX8MP enables all power domains
> up front, so later software can keep reusing it.
> 
> This benefited us because we didn't have a driver for the HSIO blk-ctrl,
> which powers the USB PHYs and controllers on the i.MX8MP.
> 
> However, not all i.MX8MP SKUs have all power domains, e.g. the lite
> variant lacks VPUs, NPU, ISP and DSP and their associated power domains.
> 
> [...]

Applied, thanks!

[01/19] drivers: soc: split off powerdomains into new pmdomain directory
        https://git.pengutronix.de/cgit/barebox/commit/?id=bea9e101e703 (link may not be stable)
[02/19] pmdomain: use single implementation for dev_pm_domain_attach
        https://git.pengutronix.de/cgit/barebox/commit/?id=1fb85a10c6c2 (link may not be stable)
[03/19] pmdomain: power: drop unused parameters for internal functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=b32806b04f81 (link may not be stable)
[04/19] pmdomain: associate devices with their power domain
        https://git.pengutronix.de/cgit/barebox/commit/?id=ac31020ae43b (link may not be stable)
[05/19] pmdomain: push have_genpd_providers check into __genpd_dev_pm_attach
        https://git.pengutronix.de/cgit/barebox/commit/?id=e5f38c818448 (link may not be stable)
[06/19] pmdomain: drop superfluous parameter to __genpd_dev_pm_attach
        https://git.pengutronix.de/cgit/barebox/commit/?id=7b23b9c96a59 (link may not be stable)
[07/19] pmdomain: implement dev_pm_domain_attach_by_id/name
        https://git.pengutronix.de/cgit/barebox/commit/?id=26c0bb95d255 (link may not be stable)
[08/19] pmdomain: add support for enabling power domains later on
        https://git.pengutronix.de/cgit/barebox/commit/?id=9200d8dc5efe (link may not be stable)
[09/19] pmdomain: imx: gpcv2: enable COMPILE_TEST build
        https://git.pengutronix.de/cgit/barebox/commit/?id=a0d8f74b6dc3 (link may not be stable)
[10/19] pmdomain: add stub definition for dev_pm_domain_detach
        https://git.pengutronix.de/cgit/barebox/commit/?id=7d04ad5ea514 (link may not be stable)
[11/19] pmdomain: add stub definition for pm_runtime_put_genpd
        https://git.pengutronix.de/cgit/barebox/commit/?id=46a46b6cc8a2 (link may not be stable)
[12/19] pmdomain: implement pm_genpd_remove/of_genpd_del_provider for cleanup
        https://git.pengutronix.de/cgit/barebox/commit/?id=7f516cc60c18 (link may not be stable)
[13/19] driver: have dev_request_mem_region_err_null warn if resource starts at 0
        https://git.pengutronix.de/cgit/barebox/commit/?id=c85be7026ca0 (link may not be stable)
[14/19] include: linux/device.h: implement dev_platform_ioremap_resource
        https://git.pengutronix.de/cgit/barebox/commit/?id=021cff0a1327 (link may not be stable)
[15/19] regmap: include missing header from linux/regmap.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=a608589d0980 (link may not be stable)
[16/19] clk: define aliases for clk_bulk_prepare_enable/disable_unprepare
        https://git.pengutronix.de/cgit/barebox/commit/?id=ca05d4e579ef (link may not be stable)
[17/19] driver: make driver.h header self-contained
        https://git.pengutronix.de/cgit/barebox/commit/?id=f14ecd34670f (link may not be stable)
[18/19] pmdomain: imx: add i.MX8MP HSIO blk-ctrl driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=60624ec572a3 (link may not be stable)
[19/19] ARM: dts: i.MX8MP: drop barebox,allow-dummy for HSIO blk-ctrl
        https://git.pengutronix.de/cgit/barebox/commit/?id=09ab7f1c9c0f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



