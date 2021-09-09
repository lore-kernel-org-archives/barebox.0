Delivery-date: Thu, 09 Sep 2021 19:18:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mONh4-0007ON-1x
	for lore@lore.pengutronix.de; Thu, 09 Sep 2021 19:18:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mONh3-0006TH-6D
	for lore@pengutronix.de; Thu, 09 Sep 2021 19:18:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qitzrKW+BP2W/vyKH3dp63o9g85okCfH4e/jM6ZlhKs=; b=t471/5/Vix0jL/RnUhnONvhmyC
	RdorhiVGUManly6OwAYCVItSi5qZTSlO8iflC8KOWv4RyGrkpQ+2MOZTCpBmH5evk3UlNQCaU1EzF
	PiOlF3AzIGq7YWHfItaoPLgeCKyE8DjFAmVCQOYsFd72ZuwIqtrVX6J2Me3F5fkbrE4o4UHaNJ4jP
	0O+ob6CumkvZP/ps3Ynh/siCI7vvL9k+WyZeSqQR5SB4kwX4PO2F284nkwc38TRT1GyZ4OPPV2cPh
	/mUcBagBrL4nMBr+Y3cLRp5ig2O1SYRqoZnB51UnrZ+yLjnE4ePG+mXO7706P1gW5hKFlS/oVpqm0
	cbuE21lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mONfO-00AUAk-Sy; Thu, 09 Sep 2021 17:16:51 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mONfJ-00AUAO-7D
 for barebox@lists.infradead.org; Thu, 09 Sep 2021 17:16:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1631207801;
 bh=waVxDP4QyViznMtM2E57yegFTNqHQh6/Zx2JDh45lO4=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=NYc7rzcv4MsZ7fdEEsqPPeHwPw0YoEHjeo5Y1R1fkP/1r1RDQ7qRSWS43bmphydzG
 y4vFBa8/PWYQZiURyCqtKIFUZauU0NoxofQWcg8Dr0cZmrT/ea2ziUv2thh6YByvCo
 0KoTw/nri0hQkbyWTrI5ofLtB8DLwtDq0qBil7AM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.44] ([95.91.192.147]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MFKGP-1m9Jce1hVJ-00Fko6; Thu, 09
 Sep 2021 19:16:41 +0200
To: Dusan Radic <dusrad@gmail.com>, barebox@lists.infradead.org
References: <CAFe1xey4MRgd8YhKePm-L9SEf2sqefcWieft9GHspvE20TZbZg@mail.gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <3eb43ce0-d56f-611b-d5d4-631a9890c36f@rempel-privat.de>
Date: Thu, 9 Sep 2021 19:16:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAFe1xey4MRgd8YhKePm-L9SEf2sqefcWieft9GHspvE20TZbZg@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:g3D3KzYYZPplXBeGiCV1+DP95Vu4mjcQnyx+DvOQ6T0x85fmQGr
 naOCFhVSFikhot20dvFQrAqHpVLan6ZnQA/vJv1A8Zdi+Nv0LtqRTQ+EwKf0oQqV5/CP35o
 JU+00dP7EY5T0R5Bj8jg6M5Yka55BmI/lVIcEAOuxfKYWfc3aUMy2VFycpPKyXOABGFCMav
 2QVlV8NPeuCbULbmjY2pA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:1n3hhPHklmA=:AjT6MFLmiCkakuBlzNi+jD
 mXq5s11ScU2u/1W0aMxGM5Oa9icbo0WBpJSjKYXOjBvQnZv85lB4oN05c3VXQL57waD9Mdmht
 Qq+blsxDqOPjr9AeuxGYc2f+1nTURi8SicWenATNm81Ezo0DhNPD/75I6pJiYb/T9POKbr6LD
 MU2Srv40ffQymeCFYt1JVSAu0MqdN5osZ9iYKPxyWaZLPvWqqpNk5iebniMv0wwehcc41fXtp
 q2xqzCHD5ZARIFcTkobYLX2bORTkg24pJenhPkd6VpExqwz63rTl7NtubPBKNn7fzNjWTV5bv
 ZBv7ZJGb5qulITCHxPK+QFdvxWIOpX08Y7AOqdd8sV0JxpDGlEQJmWsNIEMeAE04aA/2ijSTW
 3hxo/gxRCQpZ5ylQVg2tl/+rofPVgtLP7SxLHS3qBtbq/tThyk0AvudHp6oHScB8aMqboclnD
 jmliZZ7Wjn7ushcUjMGDiT4s3DsKWxkFaCkZ57mUgQXsNQt4lZpjWzjmqHRQ1TpXPCRJtOgUG
 dGHYyY+HGktc2L5PeVd8pt+nr+UHEerXlWt4YprK12WFl48XbuP9B3dQO8yr3d3tpK4v5uCNz
 iE3lpGbnBYSm4oAyyQeO8AY0RdXintQ2zFWFxMLG2FRPUm1LzeC9s4xBoa1VOkvWDaiTQBmkm
 50vinYRe4MIBhQCvOsflPp174A41loeGJQsuX5E09VbNY1/kclCQmHDtWrnZr1vTZaLeUlk/e
 lGAEqb6M0KstFv8hfdWbPBckgQ21gxlcDTAW1zB66jFEX0McNJOsrXPlGJKmvdYDF1HmRFpsr
 Lp8ahqIF+yWHuwyHXtr6n4Y4+JiURAAMNP3NmDHMELYL6b/m4EPgMbdfIp7klHYncKMfWNtYD
 OhsXExgofntV8lxZ0yurEJ30b1Uzec0XyvIP44qcxT1A3gxl3d2UK5dzacEJ7XwkdYRwuw38V
 t+c9oej2w4Ryxn8MvFDHen5zQQupHNLkocC9NjkTmhpk9QTexMcwfCziHFqJdd5+/m6+iO9+d
 PxoUBqcKXjP8Jz3QLT1QruQkfonUXrVikQSHGwnnEJzQhD0IDnkVL8obFkJYqNzNAP2JNjDmB
 72Qj3F/oVgsego=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_101645_604182_21CA98B7 
X-CRM114-Status: GOOD (  19.39  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox environment early loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Dusan,

Am 09.09.21 um 13:58 schrieb Dusan Radic:
> Hello there,
>
> is there a possibility  to read an environment variable as soon as in
> ipufb.c?
> To be more accurate, before the frame buffer is initalised I need set
> the bus_format manually and the correct value is stored in a non
> volatile environment variable.
> I have tried the following
>
> const char* value;
>
> value = getenv("nv.dataval");
>
> However the result is always NULL.
>
> If I try the same somewhere in board.c then I get the correct value,
> but that ist too late to configure the frame buffer.
>
> Has anyone managed to read the environment early, and if yes how? Do I
> have to somehow manually load the environment path?  I have tried this
> default_environment_path_set(default_environment_path); but it doesn't
> seem to work.
>
> I am using barebox 2017.12.0

uii... drop it, it stinks :D

First of all, update it to the latest version - 2021.08.0 or even next.
Then port the board code to the DEEP_PROBE.
Grep for BAREBOX_DEEP_PROBE_ENABLE. Then you will probably need
something like of_device_ensure_probed() to ensure your environment
storage is probed.

There are probably some more challenges, but this are initial steps.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

