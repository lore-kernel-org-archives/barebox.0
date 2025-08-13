Delivery-date: Wed, 13 Aug 2025 08:02:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um4Yw-000588-03
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 08:02:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um4Yu-00017Q-Lx
	for lore@pengutronix.de; Wed, 13 Aug 2025 08:02:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hiKnIPBC5mfFQcXnVBkKh3hk4oBcwuttR7YnV+71wtg=; b=0glaDcykJadY1ybRC9hfKS9Jt4
	A+ivT7WfIP7DfvG10aeRnDiDoXNB80CppwSq02/gkUjFI2y6z1tBo1CNTfyq4XoJhL+rxFiPv7bqB
	aLq6nPWdqxXbJ7+vxF62vsI7FHjfpPxEgRlLrqDE2iu7cZtFt89C4Dv/vO332x0THqb1n9gVEH84+
	0PkNZNYMYa/RSjHGIMe5AwqgPDRy842xReI2XefFhxscM0Qfl5sf1z2Biw/zXhiUp7+Zz9DXLB9Ix
	FZIUZd5clVqfDZZVMN8I0MCNvc/TgDY5kwgYVNaFFgsr+hN+eoKQIfIhrsV+UPZTZysPosxhH9e+i
	ceMHwvZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um4YO-0000000Ciw6-22wt;
	Wed, 13 Aug 2025 06:01:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um4M4-0000000Cgrr-2fB6
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 05:48:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um4M3-0007Zj-4e; Wed, 13 Aug 2025 07:48:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um4M2-0002dZ-35;
	Wed, 13 Aug 2025 07:48:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um4M2-00GSbI-2u;
	Wed, 13 Aug 2025 07:48:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
Message-Id: <175506413490.3922631.18248346030422556223.b4-ty@pengutronix.de>
Date: Wed, 13 Aug 2025 07:48:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_224856_682995_4B873571 
X-CRM114-Status: GOOD (  10.55  )
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
Subject: Re: (subset) [PATCH 00/44] commands: add bfetch/buds of command
 redirection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 Aug 2025 14:27:40 +0200, Ahmad Fatoum wrote:
> Inspired by U-Boot's addition of the ufetch command and the neofetch
> utility for Linux, add a similar command to barebox.
> 
> The command is meant to fancily show off a barebox port with some
> colored ASCII art. The usual alternative is a screenshot of a barebox
> boot up and prompt, which doesn't look fancy, because a first port nearly
> always contains some warning/error messages (e.g. because there is no
> bootsource available and net boot is unconfigured). Example:
> 
> [...]

Applied, thanks!

[01/44] driver: move device name definition into device.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=78d33fd1a777 (link may not be stable)
[02/44] driver: introduce common struct bobject
        https://git.pengutronix.de/cgit/barebox/commit/?id=211d38eb0103 (link may not be stable)
[03/44] lib: param: rename dev_remove_param to param_remove
        https://git.pengutronix.de/cgit/barebox/commit/?id=af5e8d5f08d6 (link may not be stable)
[04/44] param: implement dev_remove_parameters using param_remove
        https://git.pengutronix.de/cgit/barebox/commit/?id=12b0e9f7baff (link may not be stable)
[05/44] lib: param: add dev_for_each_param helpers
        https://git.pengutronix.de/cgit/barebox/commit/?id=b19b035e99b6 (link may not be stable)
[06/44] driver: initialize device parameters as part of bobject
        https://git.pengutronix.de/cgit/barebox/commit/?id=01494fc0dd16 (link may not be stable)
[07/44] param: operate on bobjects instead of full devices
        https://git.pengutronix.de/cgit/barebox/commit/?id=feef2e053ea4 (link may not be stable)
[08/44] commands: version: print value of CONFIG_NAME
        https://git.pengutronix.de/cgit/barebox/commit/?id=3ba1359ac440 (link may not be stable)
[09/44] treewide: populate CONFIG_NAME for all configs in-tree
        https://git.pengutronix.de/cgit/barebox/commit/?id=9b8385fbe4f8 (link may not be stable)
[10/44] test: py: change barebox_config from set to dict
        https://git.pengutronix.de/cgit/barebox/commit/?id=99e4ab188caf (link may not be stable)
[11/44] test: add heuristic for guessing labgrid environment YAML
        https://git.pengutronix.de/cgit/barebox/commit/?id=3c268e85898e (link may not be stable)
[12/44] usb: drop dead iSerialNumber parameter addition
        https://git.pengutronix.de/cgit/barebox/commit/?id=4406cf2fd6dc (link may not be stable)
[13/44] drivers: use dev_add_param_uint32_fixed for IDs
        https://git.pengutronix.de/cgit/barebox/commit/?id=76c3881b4a51 (link may not be stable)
[14/44] param: make bobject_add_param_fixed variadic
        https://git.pengutronix.de/cgit/barebox/commit/?id=89eb9e8b4522 (link may not be stable)
[15/44] param: handle NULL gracefully in bobject_get_param
        https://git.pengutronix.de/cgit/barebox/commit/?id=384b808eadc5 (link may not be stable)
[22/44] stringlist: implement string_list_empty
        https://git.pengutronix.de/cgit/barebox/commit/?id=52bcc953af3c (link may not be stable)
[25/44] mtd: add devices to new mtd class
        https://git.pengutronix.de/cgit/barebox/commit/?id=80050d10f158 (link may not be stable)
[26/44] nvmem: add devices to new nvmem class
        https://git.pengutronix.de/cgit/barebox/commit/?id=e7a81d77636d (link may not be stable)
[27/44] nvmem: export functions to query NVMEM size
        https://git.pengutronix.de/cgit/barebox/commit/?id=6155dd258bd8 (link may not be stable)
[28/44] video: add devices to new fb class
        https://git.pengutronix.de/cgit/barebox/commit/?id=84a6fb6f5d1f (link may not be stable)
[29/44] security: blobgen: add easy way to check for existent providers
        (no commit info)
[30/44] pmdomain: add easy way to check for provider support
        https://git.pengutronix.de/cgit/barebox/commit/?id=8b2e8c80bbfd (link may not be stable)
[31/44] bbu: add easy way to check for existent providers
        https://git.pengutronix.de/cgit/barebox/commit/?id=94ba8bd38096 (link may not be stable)
[32/44] firmware: add easy way to check for existent providers
        https://git.pengutronix.de/cgit/barebox/commit/?id=a3d9dbed7f1e (link may not be stable)
[33/44] rtc: export rtc_class in header
        https://git.pengutronix.de/cgit/barebox/commit/?id=5c0216a04109 (link may not be stable)
[34/44] driver: featctrl: export of_feature_controllers
        https://git.pengutronix.de/cgit/barebox/commit/?id=4cdbe2c90f35 (link may not be stable)
[35/44] net: dsa: export dsa_switch_list
        https://git.pengutronix.de/cgit/barebox/commit/?id=3bc835a170a9 (link may not be stable)
[36/44] usb: export usb_host_list
        https://git.pengutronix.de/cgit/barebox/commit/?id=8d1e246f484e (link may not be stable)
[37/44] pstore: export pstore_is_ready
        https://git.pengutronix.de/cgit/barebox/commit/?id=97909d7d58f6 (link may not be stable)
[38/44] pinctrl: export pinctrl_list
        https://git.pengutronix.de/cgit/barebox/commit/?id=04fc0b090e4b (link may not be stable)
[40/44] driver: bus: export get_bus_by_name
        https://git.pengutronix.de/cgit/barebox/commit/?id=8353464156ef (link may not be stable)
[41/44] fimware: arm_scmi: export scmi_list
        https://git.pengutronix.de/cgit/barebox/commit/?id=c326e91075bc (link may not be stable)
[42/44] block: define BLK_TYPE_COUNT as last enum blk_type value
        https://git.pengutronix.de/cgit/barebox/commit/?id=f3eebaa9c64a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



