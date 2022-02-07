Delivery-date: Mon, 07 Feb 2022 17:29:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH6t3-008PmW-8h
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 17:29:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH6t0-0006ae-Se
	for lore@pengutronix.de; Mon, 07 Feb 2022 17:29:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44YxGhSIjupXFUDzDcYShr2N3XqAbKGJiH+Jn02WL6s=; b=lSOVudJMuppFMn
	D8/06TQo1p8u+az9AEOi8Wu//RswuOAYvFLyCBued61bePncIKoa+StaU6x8pJUJ6tIbZLjSfrr2V
	abZR2MQvPwZkWceTUH9E3Gpjz59X09vzZvVgRM7MPHXlP92XbeO1S5Rd7uvVwewJw/eCB7r2zKT44
	C/eOI/7QQ4Z+nwRAL5QvvY80dXCpmp7O4rpXe0/pomzeRVdI0jdWcc+5vZ0pwQ4cfknp7+yLoYqo6
	420ThWag7H3rndgFeqChqt0SdjOFWGu2BtrECvcLm8DO9iTeu+hCI8dDacINnZpNvkUh+nykqMBtW
	wgXAqX2uEtCMQZNU5Fgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH6rF-00B4gV-BU; Mon, 07 Feb 2022 16:27:18 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH6a3-00AzNk-Gv
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 16:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644250167;
 bh=VQzc4qE250mCTsLuO2LSmSufwYtfhrJXOFInZqdzDDo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RyfQewe/IVtG68IxEXVyrmQYY6RFD2b1Q2zSautj31bMva1/jep//9XlaLSLzzNzL
 bOF90yIVvD+EYWRd+fjY8c+A1NTN+w5ojoE6D4ezCOefjOXVzOafq7vZXdRNiIGEsO
 iPVW6U11B32SGcehjlGDK8E7KgzUf+c1i+CGlc/k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.149.19] ([217.61.149.19]) by web-mail.gmx.net
 (3c-app-gmx-bs18.server.lan [172.19.170.70]) (via HTTP); Mon, 7 Feb 2022
 17:09:27 +0100
MIME-Version: 1.0
Message-ID: <trinity-da13dad8-8c99-438c-aaa6-07b5bd1eed5c-1644250167464@3c-app-gmx-bs18>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Mon, 7 Feb 2022 17:09:27 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220207085930.GF18637@pengutronix.de>
References: <trinity-36c99dd7-0b16-47b1-b6c1-0e86097fcc99-1644073134441@3c-app-gmx-bs06>
 <20220207085930.GF18637@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:R81x7GO6m4CaF9EiRANljeoZrpCiC4A0NbuvAqZ5NK89+4nButXZ/soVGuOGg3kXd/0ur
 20/C7FWUd+UrLePBcm5R+79rWKOn23YZlPNI+4GZl10unVzHca8Lo8MWRTw+jp5quvRSbB03VCFf
 ldcWp8UDdl7GYP5A0uT+TooWwk/l0/mbhXW+JqaP9BwLeUw1ZdtbrB6MywqugcwcmViQQ+3bakgQ
 b3Dq4FiWzQu47o1yygf2OL8+mTOF8vfQLISMWC0e3PQlFJkJ7ZzeCGUqyF3sva8YgHWFRaPlsM/f
 wI=
X-UI-Out-Filterresults: notjunk:1;V03:K0:En9m+7RJQtI=:pCqMIjnBntcxcO+LcmxDRA
 ziQENe7xwcm+tUUM33OjM8Vk4c1BMNbJGqAt71KXkOcimEkQm/w5WmKNeLdQQbSOrfhLG6dCR
 A9k6ysUBg5Jp4EwkRJvo1kvN85JS2nohUF1u0YKL95s97B2YiIEH+9ybwfs/mdtpfWfH+1qQn
 t0LC85B24wO0/r9JBpE049dkyg+/JV4gxrN4HStMmQUYdvFI/XhrZ9kLTvtnhhcSp+rvWk3O4
 b0Ttle0DikChI//v+n5cYlsUCLpSP1FyYbb+Z9cab3wHwpgtgtPWGrLrBQnD4gfbn0FhrA3F9
 eR2vlxsZ7o5YYT8avsjtWFisOxM9jzcfqeOYlzJh01lzPFTmJWFlAiNAmpaEPY5SDrPXH8cPe
 oIqdDntJhJjNQvrtux0xY7GpG647jj4YbMOZ7Z5FFaZwvK/x05dXNadGnV3/yGR2i/tWrm5E6
 UpdNMIL6M8EPbHfaAYUOWu4VMV/iRy1192vlgUZg78olNSqJbawbW7PO1At+BCXkRuvWI/NNw
 ohTQU4DzH7ltBBuUTM3lZcrudgHZtLcSUQuxfW1t6ufm2t+qUcZd5laTB2HBQmy1IZGrVfWDB
 EJWL0Q3q0qKSuMXiijIGO0Y3ykZhafbMsyheJPMEsBPTIxZ1X9N8HE4PSfSpBGCIAocSS6kel
 NCCYDix7p8Kgvk540ThjIgpMI5c1Wz7I9rrbwLLqyb9MCRVUx6a/3TUhk+H/V+FOGOPI1PiCj
 NjQMW+cQAun47mexX+YzjLJMfuAKLxoWnL49gze7drme3QcDURm1vS0jUa0rnytrwpfC03vck
 8CrXzb3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_080931_898712_71E76573 
X-CRM114-Status: GOOD (  30.89  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: Re: blspec - autoboot + timeout/default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi

> Gesendet: Montag, 07. Februar 2022 um 09:59 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>
> An: "Frank Wunderlich" <frank-w@public-files.de>
> Cc: barebox@lists.infradead.org
> Betreff: Re: blspec - autoboot + timeout/default
>
> On Sat, Feb 05, 2022 at 03:58:54PM +0100, Frank Wunderlich wrote:
> > Hi,
> >
> > can i boot directly to blspec-menu (boot -m sd.1) with setting in
> > default env and boot a specific entry (by title/filename) after some
> > time (e.g.3-5 sec)?
>
> There is a -t <secs> option to the boot command. It seems however that
> there is no possibility to select a specfic entry beforehand. The first
> one would be booted.

mhm, then i need a way to add it...is there anything similar in blspec
not implemented in barebox or is this a function that needs to be added to specification too?

> > i have defined some blspec files in /mnt/sd.1/loader/entries/ and i
> > want to show the menu by default and after some time the entry from
> > specific file should be booted. this gives user the possibility to
> > modify this conf to define his kernel for autoboot in headless mode.
> >
> > i tried to modify defaultenv/nv/boot.default, but this needs filenames
> > in /env/boot, no commands and if i use a script, it cannot start the
> > "boot -m sd.1" because the /env/boot scripts run bootm (tried loading
> > barebox with such script - ended with putting a separate script in
> > /env/bin/)
>
> It should work by setting:
>
> nv boot.default=myboot

i want to avoid user environment...it should be defined in builtin env, but afaik i can set the boot.default in this too...but currently i appended only my scripts...

i can use the script next as first entry if it is handled correctly

> With /env/boot/myboot:
>
> #!/bin/sh
>
> boot -m sd.1 -t 3
>
> >
> > btw. is there a way to load environment from a txt file from a
> > specific partition (similar to uboots uEnv.txt)?
>
> The barebox environment is a directory tree rather than a list of
> variables, so there is no way to load a text file as environment.
> There is the loadenv command which takes the path to an environment
> image as argument. You can generate such an image on the host
> with the bareboxenv tool and then load it under barebox with loadenv.

binary import is not that userfriendly :) for me no problem. so there should be a way to define a blspec config as default...

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

