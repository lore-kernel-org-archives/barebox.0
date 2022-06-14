Delivery-date: Tue, 14 Jun 2022 09:14:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o10lM-0020OJ-Sy
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 09:14:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o10lM-0001L6-N4
	for lore@pengutronix.de; Tue, 14 Jun 2022 09:14:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:To:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mScjOXt6CF5MeaGZuOZGJqbedyLYnOEt7GpEnmI+/5Y=; b=OfYwt1CToEsh4S
	K0Xkag++fydTaiq0SzzwiOSNDqjpgrpa5b6HSIIZXHY2ZL75KWDgVdPeQurnDP4LNYDm1Q6WjB5vO
	+Dw2BeU19wPMy6v4T2ealZrhaALHrZQRX42+wDU8uP63/1QzKCv2zdYFiA8HbG2Sh7LNGVi03d2an
	jP2mN0gOC2nh2p/xZYUwZ9p/N0rfP3RgQJfVCzyg/6+YkG0zJaFooK/wkoXBIQPhZtYibsOKeYL8x
	Qe+DnFF5kHcAgcRG1WM5MdQcYmnzTruVzmanJy3xbruckjjOQ+o9O7isewYohQHWMFovDu+mRoR7G
	+Vw0nOiDcNhByxQNokFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10jU-007W9J-1W; Tue, 14 Jun 2022 07:13:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10jP-007W57-VG
	for barebox@bombadil.infradead.org; Tue, 14 Jun 2022 07:12:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	Subject:From:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=FVJYOwfd8KryiYAwpj/vT0AyWXwMUzekUcm/ZPXTTQw=; b=aqtmCs4rAEvYIhxxpYljtECQ3I
	/RyBB7H1JbQoBv4nyiarIoQpc6mLvN+S+OJqWSZ1EAoxqvJdSDWwNqclXr9Gl/F6+WS0WgsOFjcMv
	OJylG/H7iYVqG+Jgl2SMt7sI8XtuQJHwfChXvSDb+W5mLoZ+3GPnh+Sxfnl8FodIoOWzbpQLaZtHE
	D6UP+woywyckHIWvahlSKP/D6e84FDp2J8ze858/G0uT3J3ba3G71kgKQi1uakyJfuIpyh0lRKLsn
	kskiAhNd9KFsFHmvmF3pgCv7Xdhf/+aLmUHylxTSNBaGMnFn7itpe4LUs2jG+xppxCPMLGXx64hYm
	dcyy8/RA==;
Received: from smtp-cpanel.siel.si ([46.19.9.86] helo=cpanel.siel.si)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10jL-00HYgJ-T3
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 07:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:Content-Type:Subject:From:To:
	MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FVJYOwfd8KryiYAwpj/vT0AyWXwMUzekUcm/ZPXTTQw=; b=BUPLaHvn1wQc+PhckRUndZywZt
	/lbzZ6B80TTnmu2ACiUXuEZSkiW11zJbm2JnCenx9xKjCl6oWI4G4G358+py0CoBIIW/klozdUnqV
	CoPkCI27THCRyXzz999L4kHbGSaBpP+zp5gNlocTfe2+ft/WOKQcnxx/epJxxsr9ee4ZzNzrP1ghN
	3251NuvVoAYvG8vuPc3AUFl0mYjNBCSLLJG/S/UG0G8qhhSvBAqoXHYrrrkAuZ8TTuW0Ih+RUDxIk
	WaeeeTlOvh++RIc3ONLwMy7SDZmbfHqYPC1m2n/65YJrh5oLQbF/IVUZiyB72WryHQ3xprki7Xw/z
	BYGElm8A==;
Received: from [89.212.21.243] (port=43592 helo=[192.168.69.86])
	by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.95)
	(envelope-from <andrej.picej@norik.com>)
	id 1o10ik-000pKH-2c
	for barebox@lists.infradead.org;
	Tue, 14 Jun 2022 09:12:21 +0200
Message-ID: <c51b2c94-61b7-df44-5d4c-025d18c4b24f@norik.com>
Date: Tue, 14 Jun 2022 09:12:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-GB
To: Barebox List <barebox@lists.infradead.org>
From: Andrej Picej <andrej.picej@norik.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_081252_103723_D17A71C7 
X-CRM114-Status: UNSURE (   3.80  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Ethernet reinit on phyCORE hangs the device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

when testing barebox ethernet on i.MX6 (phyCORE) we encountered a bug:
the ethernet re-init on barebox doesn't work! If we do:
$ ifup eth0
$ ifdown eth0
and then:
$ ifup eth0
$ ping HOST_IP
the device hangs and can only be saved by resetting the board manually.

We narrowed the problem down to the "fec_tx_task_enable". It seems that 
enabling tx task with writing to TDAR reg hangs the device shortly after.

Did you guys maybe encounter something similar on i.MX6 boards or on any 
other boards?

I guess this is a really specific problem as people don't normally do 
ifup/ifdown with ethernet in bootloader :D.

Do you have any idea what could be the reason or how could this be solved?
Any useful information would be greatly appreciated.

Using barebox v2022.02.

Best Regards,
Andrej


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

