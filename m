Delivery-date: Wed, 22 Apr 2026 12:09:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFUWm-00F3uW-0e
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 12:09:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFUWl-0000gj-LW
	for lore@pengutronix.de; Wed, 22 Apr 2026 12:09:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F4JJDh2Wkwst2OvF22W4Scg8k06X9kck359gYt7t8v4=; b=NtzU0E6eYmHrKn
	nd76WeOQYsh8h5i+YyVkidj5NRFnd7CsFsswoR24fFCene/98JQA6h66em/Tc7bKegz5k1SHQM+SW
	5MYVY9Qa+NCgXUwVdVDietAsSGRC05t0V4bOVC5AvdkxSdMrR+OBxzZzMEpQML6v5qNnaE3EPKdad
	fYWNZwSlUJeNanqFa+NfZexq0uOWQq96ID/EoSBGPajDt0tcgFodWKIX5l9OfX9OsQy1zYZ+Q+NuM
	4WzBxZmjBsSF+xivOD8YCX++SFfpY3eLHcbkQKQftJE+U4pZ5z0jWS9jA8oO51pUScgildIxpNTsT
	agHyBB1p1UMsaCT1qB8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUWI-00000009vXD-0g9A;
	Wed, 22 Apr 2026 10:09:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUWD-00000009vVU-1XCp
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 10:09:21 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wFUWB-0000WG-Bi; Wed, 22 Apr 2026 12:09:15 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 22 Apr 2026 12:09:03 +0200
Message-Id: <20260422-v2026-03-0-topic-soc_bin_id-v3-0-6bc9ef6a6b2e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD+e6GkC/43NsQ6DIBDG8VcxzKXhQNR26ns0jQFBvQUMWGJjf
 PeiS4cmTbf7f8PvVhJtQBvJtVhJsAkjepdDnArSjcoNlqLJTTjjFROC0bRflAnK6Own7Gj0Xav
 RtWioAa6a0tQatCRZmILtcTn0+yP3iHH24XU8S7Cv/7kJ8grAL7yvpYZLdZusG55z8A6Xs7Fkx
 xP/gCXI3yDPawO90pVW0lj2BW7b9gZlNi5oHAEAAA==
X-Change-ID: 20260330-v2026-03-0-topic-soc_bin_id-d12a84d7b1b5
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_030919_392573_B1C1FDF1 
X-CRM114-Status: UNSURE (   9.20  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/2] Add additional globalvar for soc_uid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The binary representation was used to compare against, but never exposed
to userspace to query, as the exposed variables could correlate with the
value, but did not.

For example on i.MX8MP the byte order was reversed in comparing
the return value of barebox_get_soc_uid_bin and $global.soc_uid.

The exposed string representation is encoded in a manufacturer-specific
manner, hence for use in scripting, soc_uid_hex should be accessible in
a generic representation.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v3:
- Reworded the help text for HABV4_CSF_UNLOCK_UID to include linux
  serial number
- Changed the magicvar description to "Raw SoC Unique ID representation"
- Link to v2: https://lore.barebox.org/barebox/20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de

Changes in v2:
- Renamed soc_uid_bin to soc_uid_hex
- Add to MAGICVAR
- removed "is is" in help text
- Updated commit messages
- Link to v1: https://lore.barebox.org/barebox/20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de

---
Fabian Pflug (2):
      common: misc: add soc_uid_hex to globalvar
      i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID

 arch/arm/mach-imx/Kconfig | 13 +++++++------
 common/misc.c             |  9 +++++++--
 2 files changed, 14 insertions(+), 8 deletions(-)
---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20260330-v2026-03-0-topic-soc_bin_id-d12a84d7b1b5

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



