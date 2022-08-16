Delivery-date: Tue, 16 Aug 2022 11:43:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNt6l-000YWs-Qr
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 11:43:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNt6j-0003xy-NX
	for lore@pengutronix.de; Tue, 16 Aug 2022 11:43:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V5dVr0jDA8802fu0oi2XXngXd0XZSN/tjexbYY22qZI=; b=xLEDTwlmcIDoaf/a/Ts04ixXB+
	EK1IqDOHfc47IteVOqklNw1ZgXfVdCUgjPeZEez0Q/nU8Snbj5p7sYPzljNW9bcx5Udt8RZGDv/UR
	UbSfgttoo408+WIxVFoJH4OW6U36IVGj0Q++2KERRDMecpJ0nmxBVDGYaxifk/f42ieQLevtdD1A6
	Z2/f2ff1q9zruyxq/Ts71VE3n+skHPW13xwYIoM4n8HDZyuN5eWnymYo/EnTa0KQTLr5PIyghkrde
	nnHdfAlxlCsFKLGge37w968LjO55uBbM8cjtJ4npSXbpB+n/qvgHMKOBcUYpMftQw742GvwWzoOwY
	ZkMbcS+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNt55-000QoL-Cj; Tue, 16 Aug 2022 09:41:51 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNt4z-000QVu-4k
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 09:41:47 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27G9euhV672205
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 16 Aug 2022 11:40:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660642857;
	bh=V5dVr0jDA8802fu0oi2XXngXd0XZSN/tjexbYY22qZI=; l=678;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=Ei+Wm7AB+vxTEPd6wQkQhjacp3DeWE464yi99NihigAVaAlMosKr0d8WbjsWdMLvx
	 MtU/QNNU90S5QraYe0qxEfWXxBlFLwXZvn3LF8Ma+CeVZMHtcbNXQ/t0khr2SYqfin
	 O2fa+vwAjo9msB8nigfsaqXWKYlvgv8MnrFqd8FwbN4CxB6p49RigWJ09RHoS1/Dv8
	 w4KOzbhaL9cSHI5sA6h8SpPKqYJO3rrotyfJlGd0vK+w8e9uwe07roPlKJ9wjy9oNP
	 v6l0zdsgsUnxBpk5LbW8IbxjrO+2yw14aYNKpnIccCJniiHiwau7k5ssok71XfdggA
	 i2nUbm8kSfN4w==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27G9ervI835305
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 16 Aug 2022 11:40:54 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 6C4A94FE765; Tue, 16 Aug 2022 11:40:50 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27G9eofJ643620
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 16 Aug 2022 11:40:50 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNt45-0058Kz-V3;
	Tue, 16 Aug 2022 11:40:49 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
	<20220816091918.GO17485@pengutronix.de>
Date: Tue, 16 Aug 2022 11:40:49 +0200
In-Reply-To: <20220816091918.GO17485@pengutronix.de> (Sascha Hauer's message
	of "Tue, 16 Aug 2022 11:19:18 +0200")
Message-ID: <lyfshw5xwe.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_024145_389281_F2F18B0F 
X-CRM114-Status: GOOD (  10.20  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 00/18] add "windowsize" (RFC 7440) support for tftp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sascha Hauer <sha@pengutronix.de> writes:

>> The tftp "windowsize" greatly improves the performance of tftp
>> transfers.  This patchset adds support for it.
>
> There's a variant of the tftp-hpa package with RFC7440 support here:
> https://github.com/ClausKlein/tftp-hpa.git

thx; seems to work with it.  I had to comment out the setuid() stuff to
run it as an ordinary user but can start it then as

| ./tftpd/tftpd --address [::]:1230 -s /var/lib/tftpboot/ -vvv -l -L  -p


In barebox then

:/ tftp -P 1230 data-100MiB /tmp/a && sha1sum /tmp/a
        [################################################################] 104857600 bytes, 100631094 bytes/s


Enrico


