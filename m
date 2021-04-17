Delivery-date: Sun, 18 Apr 2021 01:36:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXuTy-0003sY-OY
	for lore@lore.pengutronix.de; Sun, 18 Apr 2021 01:36:10 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXuTx-00012p-W0
	for lore@pengutronix.de; Sun, 18 Apr 2021 01:36:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uliL19KpmP0Tu/58RO94Q8ACYnXsZsRzpkHD/vpdGY0=; b=JPmwcoraA4LFUwY+tk8SlDhuZ9
	evB17vwTWY0/V3OnRUtTT1OTZNlH0DMNCZQN1V1J3EGDV1OKKk5bEANgT4ph+xRy42eYMQjl5o0Ut
	k+sRL7hbJuIIdT2Aa9pjiLZ9TlOt24Be+7j/5KnW2zw0oQ7E70wfjRAyaE62tYI5BG1Cc27f1RisY
	OcKnqpHkYAN2XBeaoe/WC9Cvk3ldDuZo9IDhVa2QW2Mpe2dLeV8yTprD9ddqiX4Gy7PYhbFiNIiPL
	a/KIYbYY1Iy1cofi1dsSozbkE/Vp5+tps0OyIghvAlhm1xa8FLlhlCcqM6pGLVeQihcULlAXWkdGe
	MByCIbKg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXuSd-006ZlY-Qp; Sat, 17 Apr 2021 23:34:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXuSZ-006Zl9-Bs
 for barebox@desiato.infradead.org; Sat, 17 Apr 2021 23:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=PVlpTHS+nzVR6MnpBr2xIDgP+6LQen+e4Ou1xHB1iV0=; b=A5y+DVfwFnCI0SCosKCtBWDMzf
 GT5T4weZjsxhG4stTzzABa2TTDXrqquP9LUk/lkolUGQFk9iMlgZLTYe9nS/Iqyf0goicjLwXgZjD
 vjA32bghDky5LwsWRwWeW2mOY/a30BU7LSKMWSjz3onT2HpLlG+rETJYJgOOh1+wvunHXH2Hbw3iM
 LbQkobdP1jXfuiHafs+c9jpJolCQpiF/axaj27Y29rfbWFKMZJh3ta9jZJfWUjzs+t4R54aSyxJMG
 QfpDDVqFQ9fwtzZMscV2ljodixTiWJxjhX14MSlF4MEH9ap2K4prjRokglg4GbIQgXxMvjXZeaVHA
 dA04Adkw==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXuST-00AEWa-Tu
 for barebox@lists.infradead.org; Sat, 17 Apr 2021 23:34:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 22BE61AA2DC
 for <barebox@lists.infradead.org>; Sat, 17 Apr 2021 23:34:35 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KNMDNRAS;
 Sat, 17 Apr 2021 23:34:34 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id ECAC01AA2DB;
 Sat, 17 Apr 2021 23:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E307627E0334;
 Sun, 18 Apr 2021 01:34:34 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 1ARGX3Re1gFf; Sun, 18 Apr 2021 01:34:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 87EA727E04BC;
 Sun, 18 Apr 2021 01:34:34 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 87EA727E04BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1618702474;
 bh=PVlpTHS+nzVR6MnpBr2xIDgP+6LQen+e4Ou1xHB1iV0=;
 h=From:To:Date:Message-Id;
 b=SaE7E8cBfCiciVOO1EzWmrQkQJjoDaMnXmInBAIOEh0HXXkSQ5bh0tEyK0r7me/mT
 VYXlhjvAw5PaCPsi5tuIs1/TIp7mOo0MrF7UfhMhrNKUXLkLW4jhV7K73kW1zIESeo
 1GNjfKLijC1Bq73dn6jA8GvF0pplv6+1jRyW2qZM=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id pwwuHvAmSBW6; Sun, 18 Apr 2021 01:34:34 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 708D627E0334;
 Sun, 18 Apr 2021 01:34:34 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Neeraj Pal <neerajpal09@gmail.com>,
	Jules Maselbas <jmaselbas@kalray.eu>
Date: Sun, 18 Apr 2021 01:34:09 +0200
Message-Id: <20210417233409.637-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_163438_279449_9E92786F 
X-CRM114-Status: UNSURE (   6.83  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fs: Fix link_path_walk to return -ENOENT on empty path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

link_path_walk was returning 0 when passed with an empty path,
this lead calling code to assume that the struct nameidata nd
is valid and thus has a `last` field populated, which is not.
In the end causing a runtime crash.

This issue can easily be reproduced by running the command:
cat ""

Reported-by: Neeraj Pal <neerajpal09@gmail.com>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 fs/fs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index a02332491..6de5a3b59 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1928,6 +1928,8 @@ static int link_path_walk(const char *name, struct nameidata *nd)
 	int err;
 	char separator = '/';
 
+	if (!*name)
+		return -ENOENT;
 	while (*name=='/')
 		name++;
 	if (!*name)
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

