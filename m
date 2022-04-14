Delivery-date: Thu, 14 Apr 2022 16:09:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nf0AS-001iQC-SZ
	for lore@lore.pengutronix.de; Thu, 14 Apr 2022 16:09:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nf0AQ-0001kT-2H
	for lore@pengutronix.de; Thu, 14 Apr 2022 16:09:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xww7U+0fbu/0egArz4ePFd+nQVKqGrtfT0c04IgcJLI=; b=vNq
	3JCeI/FDlypH+HQXhjsZXxhUAHJMqjnMnVou4LhojkFiu+MLUJrcDJXHdfj5tytsgbQfCQUh4l0Ze
	xzk1hYLKW8arn6RBOfPlqm2yeW9Cr/JUk4vj7qwLgsCJUM7GMJ46Rrqw9MpD4/xglMSJcyLEQjniO
	MtDoDhQQUS/oFKHjovEkNWy5ZosMSSgX52n5Plvh36vddyx6BxGLiS+T2SymuCJldBVIjIFainOI+
	GhVMeHjfhYmF/WJooylUY7MSNNG4b0i+vZirWc5KjnhePgxt9TfxGJxbdJ4TPA5P2blk/69epFrEg
	gMqkwDprlaDo4LdO95sygQQ6suFsj2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nf08b-005weK-0F; Thu, 14 Apr 2022 14:07:57 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nf08W-005wdk-BV
 for barebox@lists.infradead.org; Thu, 14 Apr 2022 14:07:53 +0000
Received: by mail-pj1-x1034.google.com with SMTP id
 o5-20020a17090ad20500b001ca8a1dc47aso9413460pju.1
 for <barebox@lists.infradead.org>; Thu, 14 Apr 2022 07:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=+eBgcI+ERH8bi+5HjbvOQn4dSZxaubXCZsN9CPbel74=;
 b=jSB/BxbTzidZoSsuHfYMTNO0EcInaZP6Fei7bvuCSWeUlEN3Y0s49TBmqtOUZ6QY+j
 YmDMXscNQJeQLKsCOEA5BThZ+H5OZUBUloAK4lz4gyKu/pQBdVwt/PXqdU3omv+2g+vu
 ntdR+JDRSpdmi7NhOt8iOifHx0uUmhCWC3MhVd7lN3onLDm4X7wSIiugKGFMsOWNFwsE
 47Sb7CaP2rCly+N6jCGQ2JZuSw8gtQ0py1Pluwy5uAR6drRv1tCowuSk8iSht1VUeZ2g
 yJWtXuh4605ti2bzujb1vHWqJ1jn5MAn6RURZKnq2HNWRiflLFyEbB3ka2uHw8cyYU7k
 lNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+eBgcI+ERH8bi+5HjbvOQn4dSZxaubXCZsN9CPbel74=;
 b=D6rXnBvav5CR/GOv/FkTCcgO3hz+FmqlOvGRnYkP2SO6rvKneBzRwD1P76stjePBNd
 Us4xMkzIquwXeFgB71D+ZlmkmPNSB1OPJcYa0i6NUbP4zrxKfnNkZyNLKq1HQkhN6kav
 UbsplFb7Hpub515Z3UI+aEc6QpW0Jif6Vr1DdBzXLfQgpYTw+qNpwsrPyoXbTcaAPZHr
 5w3is1Z3ZQZjhb0Woly2QogQRKXSbi0PP76sy+8/bhVSQNjNQ0hoOlwByZSb9X+VPZLg
 xnU8UodF7nGIbbyMZ+q1qUNJXuaXEbvLtC4lT7gJOZYRb70UnTh0XVfpehkNCfgvKaok
 rOAg==
X-Gm-Message-State: AOAM530FwUaBAnMZWsQTJXwWvYhva8/cdefMekHZH1aVvy8QfP7bzq9K
 ir6h327+P9FDM6Q1hTfLgKbFEVY2FPOSMny+ZfPYc69cvTM=
X-Google-Smtp-Source: ABdhPJzHEw4/J51RX+mSKED60WaisSZk91+2bw8d7TpeMlaLf/rK4lXOVuDtvyL/81doGulfhmysXpbUOC/QI3wt6j0=
X-Received: by 2002:a17:90b:4b82:b0:1cb:7aec:a830 with SMTP id
 lr2-20020a17090b4b8200b001cb7aeca830mr4566690pjb.232.1649945270132; Thu, 14
 Apr 2022 07:07:50 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 14 Apr 2022 17:07:38 +0300
Message-ID: <CAP1tNvQd1iDsyNGSyv25L45xkk8wTQtsdPGvhXZrNcFEGbtY7w@mail.gmail.com>
To: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_070752_446071_54DF05BB 
X-CRM114-Status: UNSURE (   4.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: AM335x MLO failed to boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello.

I can't start the custom AM335x board after updating to version 2021.12.0.
Perhaps this is a consequence of the "devfs: Do not create overlapping
partitions" commit.

Here is a debug output:
Add partition nand0.MLO, device nand0 (0x00000000-0x00020000)
Add partition nand0.boot, device nand0 (0x00020000-0x00080000)
Add partition nand0.env, device nand0 (0x000a0000-0x00040000)
Add partition nand0.system, device nand0 (0x000e0000-0x0ff20000)
booting from NAND
Add partition x, device nand0 (0x00020000-0x00080000)
New partition x (0x00020000-0x0009ffff) on nand0.boot overlaps with
partition nand0.boot (0x00000000-0x0007ffff), not creating it
failed to open bbx
booting failed

What is the partition "x" in this case?
How to fix this?

Thanks!

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

