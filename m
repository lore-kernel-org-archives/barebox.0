Delivery-date: Mon, 05 Sep 2022 17:39:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVECH-007eva-RT
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:39:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVECG-00033U-SC
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:39:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=awMTP2NszNAcckp3QsP1Cgpnq2qYJAXc7FUdM6gNzls=; b=CghD79rl4CtlnRKIsiY+UDBYFy
	QLuQfQDCBL8GbMum+qPogXqJ+8xdT6opYrsoh+6nspvEZqRQn2dQ3B4JcJAIQqNRUkdUEgn8Hx3IX
	v0zKYXCbUmf1SupDXzRt8aeRywI72eHggGDW62/UWpqFBTkwu/rNv3AU82+A57XhNCRwRifRr43Qx
	O2fyjEDz2Gdu9d76KzX/JqThE7FusFNJVGWJ4nvUabmIBd2/YavHwp1XMh7TD2J+3KGgmAxJGpKvU
	odzyE+wJNeUFkUtB09soihJbvtjsRBwNdyhEZa3EP/NXNC4JeCFwQhnfWc27iT7ttkrDuhXRQtoFZ
	oEKOdWhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVEAM-0064vZ-Bu; Mon, 05 Sep 2022 15:37:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q8-00H4Cy-7K
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=awMTP2NszNAcckp3QsP1Cgpnq2qYJAXc7FUdM6gNzls=; b=UyWVAZBlidPn8rNwl0RWUaE4As
	XSqra8Nl+38bGWVZjrNphCcBYz4zB4TR6WmzlBWPbeBcv71I/GtykVXtZW5Mjh0IzdFRM5cDi0SEh
	B0abr2I+jJ/qjvu6/X2SMryZms/Vj39aA/XWZLGKI51rwPCWI+1jGPE35ltzSOH/r9c1ll7Qjv+By
	YHRh95gCA6rFXclki8rYjdz7tXivVYpP9BtBLYiygmqYUxmj4LDwoNWB8TPP4TSycBMdVWrB1ER3r
	dLNP3FLXHLnv8AJV+35ruLf2I3E1K6xUtZBbWWaIubDVfAYjbJfpaxhGqMY2Yc4kZ6XB1ZhTfyir+
	kEDAtiOA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q0-009UjT-Ea
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8ps-0008J0-Jx; Mon, 05 Sep 2022 11:56:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0042HG-UK; Mon, 05 Sep 2022 11:56:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002We6-WB; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:35 +0200
Message-Id: <20220905095557.596891-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105617_002540_F9AD5F53 
X-CRM114-Status: UNSURE (   9.55  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/32] state: propagate failure to fixup enum32 into DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We assign to ret, but don't use the value anywhere laments the static
analyzer. Remedy that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/state_variables.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index f112c60bf602..cb85f3a92602 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -180,6 +180,8 @@ static int state_enum32_export(struct state_variable *var,
 		str += sprintf(str, "%s", enum32->names[i]) + 1;
 
 	ret = of_set_property(node, "names", prop, len, 1);
+	if (ret)
+		return ret;
 
 	free(prop);
 
-- 
2.30.2



