Delivery-date: Tue, 11 May 2021 14:27:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgRTs-00050W-Mq
	for lore@lore.pengutronix.de; Tue, 11 May 2021 14:27:20 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgRTr-0003ia-Lr
	for lore@pengutronix.de; Tue, 11 May 2021 14:27:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BbA28YQ/z8tz1mzIzA0O10UL6bHCanxjVpCDGAWeP7g=; b=b8n2uW+KvD1+/MZNBtvB612eb
	APIgPpDw8CF2H841LzNM3kKSeiapVXbQSGqSLtkssADvVT/NKaaAJl9nCbK9fSvpZxxOAEE24+wjP
	AYFIUNOiAGpiWCpSp7660kd67nI9TxFqRLUDBlpypK7saqtaK2b2aSJmbn8sPHwb2IugdLNSzHj8g
	U7SQ8reV0NXh9d9bbn1hP3CYM9yg4CFCynUh0t1m8I6e3qiitnPy1PZVuoc7T9HyIOO0jtGNBej/g
	toN6AaYzgi6P1m6GrAQ4WB46wueHaYkGikiCz+wkCV39pY9xTiywubm/aySE89wRSgWNzFxvs6mV8
	3ugK/gxEQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgRSw-00HNVX-Ul; Tue, 11 May 2021 12:26:23 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgOE6-00GdnL-RF
 for barebox@desiato.infradead.org; Tue, 11 May 2021 08:58:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=4x5RV+ZUncfUI+qd5Y1r0v+XNVjvKYIBYtsA9/oB8o0=; b=Tao2DzEjn3QWLfPDbTZpIFTpqV
 uBOvJH8kh0vggwkndjJnI9WkWD4smdHok4TDa7168r0CXFaJ4rypmErM+G4PHirXaizQgWYXc3ZK7
 YP5109ERw/WkPhZhxMYtsTmY/mAlkzYKX6fUdem/A7+g1W/bAG/oAksnJ/xPrhyvvLlzcrTdQVGLy
 qBKomZS9w6giAA3rAxTjwVHCPQkQP3m0wniY/kDUiSmHn6v6iIhcxZEFieO3YRkMvBGjqT6GrEcjD
 hJ0KV54f2hHx8hZDqp6CK/gRcjHNw4+XRZnGbNDJNdzl8nShMoMkzAK9TtwvwnpYDtAsy4nTw6G4+
 p9lDHlhg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgOE4-009Pl0-2Y
 for barebox@lists.infradead.org; Tue, 11 May 2021 08:58:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgOE2-0008C9-1e; Tue, 11 May 2021 10:58:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgOE1-0004j4-Nb; Tue, 11 May 2021 10:58:45 +0200
Date: Tue, 11 May 2021 10:58:45 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Neeraj Pal <neerajpal09@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210511085845.GG19819@pengutronix.de>
References: <CANi4_RUhZuWvG+v9R1Ae5BmCtHx-Bz_4Ay0BiuBYCrqXUAOBiw@mail.gmail.com>
 <20210507084102.GU19819@pengutronix.de>
 <CANi4_RWKvQV68RaZLNBFTJP1z3vObuZYo-HRqfU6r4rL8ZxKoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANi4_RWKvQV68RaZLNBFTJP1z3vObuZYo-HRqfU6r4rL8ZxKoQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:54:43 up 82 days, 12:18, 106 users,  load average: 0.53, 0.61,
 0.43
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_015848_141345_5140FC0E 
X-CRM114-Status: GOOD (  26.35  )
/bin/ln: failed to access
 'reaver_cache/texts/20210511_015848_141345_5140FC0E': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_015848_141345_5140FC0E 
X-CRM114-Status: GOOD (  23.32  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [BUG] Stack buffer overflow WRITE of size 1 in nfs_start function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 10, 2021 at 04:38:51PM +0530, Neeraj Pal wrote:
> Hi Sascha,
> 
> Thank you for the patches.
> 
> I have confirmed it and observed no crashes as reported earlier but I
> think there is a small typo in the nfs_start() function in
> net/nfs.c#L677.
> 
> 672    static int nfs_start(char *p)
> 673    {
> 674        debug("%s\n", __func__);
> 675
> 676        nfs_path = strdup(p);
> 677        if (nfs_path)
> 678            return -ENOMEM;
> 679
> 
> In line 677, if strdup is successful then it is returning ENOMEM so I
> think there is a typo, it is supposed to check for NULL so it would be
> if (!nfs_path) or if (nfs_path == NULL) then it should return ENOMEM.
> 
> Please confirm and also sending a small patch.

Ok, so my patch doesn't resolve the whole issue. I just tried the nfs
command once after a long time now and this really seems to be broken
in other ways as well. I tend to entirely remove the command instead
of further trying to fix it. The normal way to handle nfs should be
to use the NFS filesystem implementation anyway which would be

mount -t nfs $server:/path/to/share /foo

I don't think we have the manpower to maintain two NFS implementations,
so we shouldn't try to.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

