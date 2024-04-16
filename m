Delivery-date: Tue, 16 Apr 2024 14:11:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwheY-003Lmk-2L
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 14:11:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwheY-00078a-6W
	for lore@pengutronix.de; Tue, 16 Apr 2024 14:11:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l704XHu7U8eZS78XFlQ+x21vaNT4/c1mhWnV4F5wdkg=; b=U+UU1nnJSq8CE5KyBrc2zL5+rg
	uVP4egM51N5mBHpZrl7U0iB/KrnH8FkOfrqQ122qjFFd3a8tYztQgj7NDq9zgdrHW/3HfpDIy6YxF
	194qvnqp9KY614orHgnFJOXvky45mKLG03IT9LFJ1nhglBrW71rUNXFAiq4HwMxp0KvXQ8WCsTpnP
	SNdkLkIPsae0cZCTRSAxzEgiq+/tCA3bwaNIQi7C1T8lmRwEHcqXVrTemTJZYC7SyuZwFn04Mq+cj
	JJquA6nEjF2xnviVQAVtvjQd7n34W1ENucZ17Qur2SR+VXBM7OCVVwRyk46Y0z9/GMAxnxtInl8VU
	3fv6Ttyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhdw-0000000C4ns-3CYh;
	Tue, 16 Apr 2024 12:10:32 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhds-0000000C4iP-06UG
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 12:10:29 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 43GCA7fa454806
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 16 Apr 2024 14:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1713269409;
	bh=l704XHu7U8eZS78XFlQ+x21vaNT4/c1mhWnV4F5wdkg=; l=1030;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=eGgfBX4lwLGD/D7aWkztITYsjjz8yeqktps/Xs5u7zYg7jjgpJRZBjOD3aePda92C
	 /LZ4118bFdB29+dO+fyIyzN0GqL66z+ocTZYV9/wG1FmAjx09x89Huw8Si+y/fTCnh
	 OG5ul21ISbHu2pb6REzMdyVRs+vdss4zzxI+UAIANfBd4uz8E1l2UjOUFh4I56JesM
	 OpQWiGyKVlkE/Keu0Z99Kfsl8y+sReMuq/fzwHN1URXnG5iGe7NxaY1QNsmFhQAnyM
	 FeL/gfVEP2TV9vLD/SRYCY1/+oWVDtT7DSJCQG6gY4r/iEn1jZRt/r9ZvuFGukddTp
	 MSiij0MFLirCA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTP id 43GCA59s1114573
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 16 Apr 2024 14:10:05 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ([192.168.12.73])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id DLM5VBWWE1; Tue, 16 Apr 2024 14:10:04 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 43GCA4A0443304
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 16 Apr 2024 14:10:04 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.97.1)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1rwhdU-00000001RgJ-2AzP;
	Tue, 16 Apr 2024 14:10:04 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <Zh5oy4CE9fF6OARr@pengutronix.de> (Sascha Hauer's message of
	"Tue, 16 Apr 2024 14:02:19 +0200")
References: <20240412162836.284671-1-enrico.scholz@sigma-chemnitz.de>
	<Zh5oy4CE9fF6OARr@pengutronix.de>
Date: Tue, 16 Apr 2024 14:10:04 +0200
Message-ID: <lyh6g1v78j.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 661e6a9cb121c496daa980f1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_051028_242483_F286A440 
X-CRM114-Status: UNSURE (   9.23  )
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
X-Spam-Status: No, score=-105.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM64: let 'end' point after the range in cache functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sascha Hauer <s.hauer@pengutronix.de> writes:

> So 129 bytes are sent from barebox, right? Which network driver driver
> is involved on the barebox side here? How did you force sending excatly
> 129 bytes?

drivers/net/bcmgenet.c;  I made a

diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 9e0bacb31adf..988324cd22d4 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -272,6 +272,10 @@ static int bcmgenet_gmac_eth_send(struct eth_device *edev, void *packet, int len
 	u32 tries = 100;
 	dma_addr_t dma;
 
+	if (length == 129)
+		print_hex_dump(KERN_INFO, "D ", DUMP_PREFIX_OFFSET,
+			       16, 4, packet + 125, 4, 1);
+
 	prod_index = readl(priv->mac_reg + TDMA_PROD_INDEX);
 
 	dma = dma_map_single(priv->dev, packet, length, DMA_TO_DEVICE);


there to verify the input data and checked with tcpdump on the other end
(which differed in around 70% of the cases in the last byte).

Packets with arbitrary length can be constructed easily by custom tftp
filenames.



Enrico


