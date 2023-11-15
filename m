Delivery-date: Wed, 15 Nov 2023 10:04:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Bot-00CJEo-2p
	for lore@lore.pengutronix.de;
	Wed, 15 Nov 2023 10:04:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Bot-0002tc-T8
	for lore@pengutronix.de; Wed, 15 Nov 2023 10:04:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DmRKSq4n7R3jKaPl3Gg74VjSVOPmbTmuv7Y27lmu+9E=; b=svpu+igGc+pgB1CoB4R28a2hbE
	qH4NOZti+CSFU1ibBKwDvkdUn0kjhmg5TKQ0yXbd14etduKbvchQzFRDMU7L6xj6CdYuQpM3yrkyf
	tR48MmYnaYRh9O/U6/Ya5VZH+39f0Kyohr1LV+jn112pZvez7kuPWQ6yP/YncX78wqoVjlmVeyGLE
	L2YgN/SxyxD/JJpsSOQH1OJC9+jryrjLpkDv7fggiaZ3jAcRAgJN3unfs4gzM3YaTxaj/FF9C/q6p
	3tZEt802jfXcnENzRY9Ce+oL8K0u2iKe14XAKRDTiVszmEIdTqMdE5UFdKJBX5hI+jSGV2JU4vT1l
	WeDPCFtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3BnU-000HrA-0K;
	Wed, 15 Nov 2023 09:02:56 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3BnP-000Hp6-2l
	for barebox@lists.infradead.org;
	Wed, 15 Nov 2023 09:02:53 +0000
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 7606EB80417; Wed, 15 Nov 2023 10:02:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1700038966;
	bh=zeDBQ4DkjLdI2jtITXDJvrs1hiKm6C7nUdXwdsLnNAo=;
	h=From:To:Cc:Subject:Date:From;
	b=WcBCHWyGzFRZ7YPN6buPYtwm/dXKkswFhgh5kjtUEKnP37MC+vrr73yUaUQarsnE+
	 rkvDoASwypQq/xR7sgg2nqlnJaLl9IDzy0lIh4C/uiU6LZoS6POw0fLPUnh4mjK4lC
	 oVhQBTsp6TxJgNeH1FRN3FuQTSYpFmqYKeGc128nuS1XWw/F3HnuJFwg+3S0F5q10I
	 0Q2ySuutwdisPl2ccV9k5EhioK8u2C2Ws9d1B1Y/v7vGmW9NU4m0/OWCxRjGO6IeHq
	 DPvlwAPYPv4IiaHK+W1mZI0zMNv28evb1cqLQBgzQNLeKF2q4rctLO2F3IWQvPlm5G
	 3Wc8LLIx4B9cg==
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Thorsten Scherer <T.Scherer@eckelmann.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	barebox@lists.infradead.org
Date: Wed, 15 Nov 2023 10:02:39 +0100
Message-ID: <20231115090238.399200-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.42.0.586.gbc5204569f7d.dirty
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1806; i=uwe@kleine-koenig.org; h=from:subject; bh=zeDBQ4DkjLdI2jtITXDJvrs1hiKm6C7nUdXwdsLnNAo=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlVIkukDV9Hi7aTvD6A9bXf3H7mWiTeWdbbls56 YUOPBMdzY2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZVSJLgAKCRCPgPtYfRL+ Tq9EB/96CQ7TbaCr72tUTPAzh5VNG+G69FFUuZIoEWwEhZby4fg0QEhlvSU0XeSPPjFZCfZou49 o9Bw9z/I9w/2PKWLcz0a8lT6DaBvMJMjFlvblwyC5az2qU5JM8jfBxLdMixfSd2EEA24rCzM41p 1lCBB80lT9sj7WclDQk9vLdvMOixWSVLIolhFNzHNjEzlRy+segMOGZXlHVD8EOw88DO4TFTGlc 2rbOhGpZXLxStKPAaTE8GZok7L0BN8V7E4KvSlWABc9sa/uceZtSj7Je6zOqJImSfbkJnEvHaB9 7314sEbEB/jrjMonigRlyECi1FWkQWExZpcV+JPnGNgjqv61
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_010252_388217_41113C02 
X-CRM114-Status: GOOD (  13.99  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/2] Allow generating MAC addresses from machine ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

this series contains two patches by Ahmad that he send earlier starting
with Message-Id: <20230911155927.3786335-1-a.fatoum@pengutronix.de>.

Patch #1 was already applied back then as 9831b2e5fed8 ("common:
machine_id: support deriving app specific UUIDs").

Changes since (implicit) v1:

 - fix compilation with MACHINE_ID=n (Sascha)
 - fix typo in NET_ETHADDR_FROM_MACHINE_ID helptext (Thorsten)
 - rename of_populate_ethaddr -> populate_ethaddr as it's not about of any more (Sascha)

On Tue, Sep 12, 2023 at 12:49:03PM +0200, Sascha Hauer wrote:
> On Mon, Sep 11, 2023 at 05:59:27PM +0200, Ahmad Fatoum wrote:
> > @@ -566,11 +568,18 @@ static int of_populate_ethaddr(void)
> >
> >             ret = of_get_mac_addr_nvmem(edev->parent->of_node,
> >                                         edev->ethaddr);
> > +           if (ret && IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID)) {
>
> This check doesn't seem to be needed, generate_ether_addr() already
> returns -ENOSYS when this option is not enabled.

I kept this check, Ahmad already argued that is should be kept. (I only
swapped the checks to have the static one first which is IMHO more
natural.)

Best regards
Uwe

Ahmad Fatoum (2):
  common: machine_id: support deriving app specific UUIDs
  net: add generic MAC address derivation from machine ID

 common/machine_id.c  | 84 ++++++++++++++++++++++++++++++++++++++++++--
 include/linux/uuid.h |  8 +++++
 include/machine_id.h | 11 ++++++
 include/net.h        |  2 ++
 net/Kconfig          | 17 +++++++++
 net/eth.c            | 15 ++++++--
 net/net.c            | 49 ++++++++++++++++++++++++--
 7 files changed, 179 insertions(+), 7 deletions(-)

base-commit: bc5e49335067d0c6c6e97c082a0368fe9d86b725
-- 
2.42.0.586.gbc5204569f7d.dirty



