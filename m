Delivery-date: Fri, 28 Aug 2026 16:13:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzxKI-008BQ6-0Q
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 16:13:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B5E0F200F45
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 16:13:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=alcEzzjk;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=fo20A814;
	dkim=fail ("headers rsa verify failed") header.d=ku-gbr.de header.s=x header.b=Xv5lmHo5;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nG+A+KfkCNJzYvvfrzUH2iO87MGL9f+jmaHFZNaJOfk=; b=alcEzzjkYPYv2e
	cTbVLpIVnJX81weQY/o9jvLYgNoWT20qcGikZBojevs4tl6Zdsp+dqNepcotkDW1O92EmhPdCmHzg
	NMgcEeySPHmhSVmP79YBd/Mz/IogEj8QNJI6vmxb/7KSKUg/iXiCYVFzzJc0UOtqlr7DorEHTB475
	3rcGSnI5+LDdOzrcIrC0oXvsmMupyplD7sE5RaKF9wT4V2ISldHPgdA+9Q5M7Nme6zQkWLUF8XGq6
	xIIFZoeGjMbrF+4IC6b8PwPulpmOh49R7QKdLp3WcP0hh2zWkvcwMIABqAKoVnKtAWTHjtcfsGg9A
	EEZW0o1wvFKAj7Smq7og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxJ1-00000005x7j-3F0J;
	Fri, 28 Aug 2026 14:11:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxJ1-00000005x79-0g75
	for barebox@bombadil.infradead.org;
	Fri, 28 Aug 2026 14:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Date:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Cc:To:Subject:From:Message-ID:Sender:
	Reply-To:MIME-Version:Content-ID:Content-Description;
	bh=nG+A+KfkCNJzYvvfrzUH2iO87MGL9f+jmaHFZNaJOfk=; b=fo20A814OjpXDK5X9VLWkuR7wj
	k5FsE5Ao+NJZRMT5IPtZr6fawslAnNzMUJB3E8x6+dPMtPAsl9kLthk6+fV3EVynx300Q2y4qtJ8i
	JPpgws/CQoAc8djPNNUwJbl13rKDOryhwOPyT7mX04SCqMgz9GbJEJdI/PpdXHMECs3HxWDSGYLK1
	OTkHe05OB8PLaA0XSSj8kH3TCQ56lM4Yd/E1/tL2TQFJd+H4FO7Wz9jr6eQaK6pDtrUcEQh/rX5pk
	ThBYIKnqd9dYo469htArtEc9hYr7KODsFzw6lYRY9RUHuyQqDNG2CfcDKEO5rg6UqpNu4LQg9Mv58
	h6nmg2dw==;
Received: from mail.ku-gbr.de ([2a02:790:4:9::dead])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxIy-0000000EoGa-0uAa
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 14:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ku-gbr.de;
	s=x; h=Date:Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:
	To:Subject:From:Message-ID:Sender:Reply-To:MIME-Version:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=nG+A+KfkCNJzYvvfrzUH2iO87MGL9f+jmaHFZNaJOfk=; b=Xv5lmHo5IiBRAE1yGmAKUvDwEt
	zFl2RtFa1tGcGOgg+CnI/VKA1nCxBvHu9MTU14BzVvY/ExGSY/rzqSFwJp3B4QHBs7y/lrTYZzPn+
	GDiMCtbdBYwLH0kIgcRTs82jePA/2YdcFKttLN1+HrwjkZlzV2Sz3ZqyqA8Ch67lnA/QmBEhe+RH+
	mkNqp4vqlr5DbgPA9YDDXBKNlUaDGPu95U/oH/oFFZ02kfcRVJXZ4wgL0rTGJQ+v7LOKvsYD41953
	ISjbufuc8jqM5udWC4I9q2oTctpLgFug/jw8AEsx3ei/q2VFyTFMi7zH5KRBZcKv4wh1BdWd0ZHoL
	J9c+/FEA==;
Received: from [2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5] (port=44756 helo=[127.0.0.1])
	by mail.ku-gbr.de with esmtpsa (Exim 4.96 #2 (Debian))
	id 1wzxIL-001cGZ-1E;
	Fri, 28 Aug 2026 16:11:01 +0200
Message-ID: <d66fbfb2-135d-439b-b53e-97f7ea21459d@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [RFC next 0/2] dm: lvm: Initial Logical Volume Management
 support
To: "Tobias Waldekranz" <tobias@waldekranz.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <20260824183203.3759144-1-tobias@waldekranz.com>
References: <20260824183203.3759144-1-tobias@waldekranz.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 28 Aug 2026 14:10:55 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_151140_353744_8BABBAEB 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 4.0.2 on casper.infradead.org summary:
 Content analysis details:   (-1.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-3.58 / 15.00];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	BAYES_HAM(-0.97)[86.81%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1236::1:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:tobias@waldekranz.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=casper.20170209,ku-gbr.de:s=x];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,ku-gbr.de:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: sirr4d7jsnwy79upxxwab1j9dgpyd74h
X-Rspamd-Queue-Id: B5E0F200F45

Hi Tobias,

On 2026-08-24 18:31, Tobias Waldekranz wrote:
> This is an initial RFC on the addition of LVM support to Barebox.
>=20
> Avid readers of Barebox lore might remember me describing LVM support
> as a key part of my roadmap of how I would like to boot future
> versions of Infix - a network centric OS I work on - in the original
> device mapper series. [1]
>=20
> I have finally gotten some time to get this in a presentable state.
>=20
> Example session:
>=20
>     wkz@spa:~/src/github.com/barebox/barebox$ ./barebox -i disk0=3Dinfix-=
x86_64.disk,blkdev
>     [...]
>     barebox@Sandbox:/ lvm info
>     VG "internal":
>       UUID:    sN8htx-oD18-wHWH-SuCU-1EWy-th1l-5WPU6j
>       SeqNum:  1
>       Size:    132 MiB (1 MiB extents)
>       #PV:     1
>       #LV:     1
>       PV disk0.2:
>         UUID:  6VHjVF-WVt7-Gk4Y-oTrK-lsgY-ve7N-GJ0CUn
>         Size:  134 MiB
>       LV "infix-x86_64.raw":
>         UUID:  Xp76Ig-9XXj-aBfK-Xv2U-rbsY-nEWX-omt4Bo
>         Type:  linear
>         Size:  132 MiB
>     barebox@Sandbox:/ lvm activate internal infix-x86_64.raw
>     [GPT warnings...]
>     Created internal-infix-x86_64.raw
>     barebox@Sandbox:/ ls /mnt/internal-infix-x86_64.raw.0/
>     mounted /dev/internal-infix-x86_64.raw.0 on /mnt/internal-infix-x86_6=
4.raw.0
>     bin       boot      cfg       config    dev       etc       home
>     lib       lib64     loader    log       media     mnt       opt
>     proc      root      run       sbin      srv       sys       tmp
>     usr       var
>     barebox@Sandbox:/
>=20
> If the overall structure is OK with the community and maintainers,
> then the biggest remaining issue is testing. I have been surprised to
> learn that the standard LVM tools will not operate on disk images
> (without loopback mounting). Nor does there seem to be any other tools
> out there that allows you to provision PVs/VGs/LVs without having them
> "live" and attached to the host system. If there are any suggestions
> here they would be very welcome!

Would guestfish be an option? That allows you to call pvcreate/vgcreate
on disk images.

Sascha



