Delivery-date: Thu, 22 Apr 2021 08:47:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZT7E-0003hT-8s
	for lore@lore.pengutronix.de; Thu, 22 Apr 2021 08:47:08 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZT7D-0005Lh-08
	for lore@pengutronix.de; Thu, 22 Apr 2021 08:47:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/YZvFFZHmlFIxs/IuFhQhJ0hB0oZpMRwhnXJCqHluQs=; b=aDfgvCnbS++26IyEnWjv4sYxD
	ZAqKEsqSp7ahjwVAQcY629PxdAjtl4uhxQmAvaXtzV021LeBDui8d7ZbwzvBD/OABgzB7HsZXlRSt
	FdZBhwbmdWEuo0TCBicnewYxWb7JBVvYvmDn+rLkffWpvRCw3Wik6IFFqzURn6U04maEh17dDoJ+H
	75Z0ztj96BqNmNFIcOD/9xipP26FEbHSIqBYZlB8Dz6rubYoTV589teUbr31Pp2OpcoTbPrESk4BT
	1quT4qpw35A3Qy+gqDrolRDUHyz0FGGZ2jJw8VhX59q+sxai63hJ6Lkrs2XP8SKjYeTL+gANxU6HA
	G28ZmFqGg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZT62-00G37h-RE; Thu, 22 Apr 2021 06:45:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZT5z-00G37I-CA
 for barebox@desiato.infradead.org; Thu, 22 Apr 2021 06:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ngKp7mTiTTJT7Wbbvn0xhFQKYZ/ASRVe22cLyFRsFbI=; b=asiARsMRG6HwVSi+SWhLydCHYL
 JJxWJgRIhpSfR4oNtjCIPwId2pFbUXLDE8slz9HX82zVPJdFoGjbpfI0Dyk3bqw25CnlTal8QFFyu
 oB5r3/j8db5h2lgS+8sYnMrjYNRaZDv03DdVLXLqlZ1pq0WiJ3KJwZ0D0dinjKNRZ4hghD8pTe6Eo
 iEnnFf+COvTZFjs9LBsnYDOvNbzIkmEa2nuhxSIZlvEKxKEoZ1WpDMDCaFeUTvZ7TB7L0EW+EhNH1
 UtwodnHPbEVoEyuLI5T2n6q1fP/aUkwkA/79Qt/f+ymnV1hCajnL5giRl1HeZf4e8uYrx6WmGBUMn
 aNdiBbkw==;
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZT5w-00DQ9l-Em
 for barebox@lists.infradead.org; Thu, 22 Apr 2021 06:45:50 +0000
Received: by mail-qk1-x731.google.com with SMTP id e13so35505976qkl.6
 for <barebox@lists.infradead.org>; Wed, 21 Apr 2021 23:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ngKp7mTiTTJT7Wbbvn0xhFQKYZ/ASRVe22cLyFRsFbI=;
 b=PiQBQnFLIDEoPODBdWzCXhkoBbslIAvGVVqJlppPQh5GkDBeSCz8KjSBBQv7uETrZs
 i68sxvt6IhBkZOuWwjklzFhJqp/jOYmJClaFCDBPoo0qb9PbrB+BvSjXA7QBipKpHlcw
 iDD51POpY/aPR41Pvpq1rbTodDUe/aXf09Q1v+h2RPSCSENnibnaja12yPFUF4dOPooT
 L0bgS4rLhNw7+/Ht02qc0MjoO43I9onHA877003PaTZjYxiiWb9lUgt71imSTe9/yQxl
 c6V+KyXitVMFOwLqUf6zy/+9D89Cq5bgesCxe3aMA5sRHaDXCFjHEvtWY9SjB7eurC83
 4u7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ngKp7mTiTTJT7Wbbvn0xhFQKYZ/ASRVe22cLyFRsFbI=;
 b=n97tUU6Uly9j7TVMubTaWXGhOXLpIHfteYAUuaDlF0elceabiyc98mTX6kjAunE72H
 aQVHkUJIo6geh4J7AdPvfZIM3XqaV4JXULbHh/SoVZl674DPfujJosjA5WociyQjKhvy
 TM+xkYCmrgn3zrkckkb+YV31Iw1fBeJtCTxZiCAKrtAVyZhAFO1o/OZbkjj2BN3h2vms
 VnIx0RE9e7oucMvAq0VB8/uAhBvK8FX/0raxr+Mg9aoYHagGxVvKQvDRg8G1ZzE0NS5W
 +wzF3TFQX3UX0gs5IGc3enScwnF0xRhlFWl/fjhFjWSUs7a8o21WynstLF5TXk0ghXSK
 JL/A==
X-Gm-Message-State: AOAM533++xBUFKPEVv7x3cnY0Mtu9+RKmB7Xwp/rRERE2Ru44jq91VRa
 sSFochOozkD1fBExLQ21o80B+3ZxZcMA5XEOyD4=
X-Google-Smtp-Source: ABdhPJwsYCjzNuOZH3dRhX0XMTrfoox/Xt9/w9bDZUObs+VCgeozU8u8NZa4vinBv4IAH6KNFxBmMXwyb8hVSrv/UFY=
X-Received: by 2002:ae9:e8d5:: with SMTP id a204mr1978582qkg.409.1619073946990; 
 Wed, 21 Apr 2021 23:45:46 -0700 (PDT)
MIME-Version: 1.0
References: <CANi4_RV5d9-FgoJjCebMGn4cjQ_DrqqLs0XdC2wUzn6qFKviHw@mail.gmail.com>
 <20210421180759.10957-1-neerajpal09@gmail.com>
 <790f7dec-aef4-6e9c-c34c-d0001440956a@rempel-privat.de>
In-Reply-To: <790f7dec-aef4-6e9c-c34c-d0001440956a@rempel-privat.de>
From: Neeraj Pal <neerajpal09@gmail.com>
Date: Thu, 22 Apr 2021 12:15:35 +0530
Message-ID: <CANi4_RXQMObqajAKM1L=p7sRcLh_eQwdDgH0+CLXPybqPjkYuA@mail.gmail.com>
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_234548_543857_8E7BF855 
X-CRM114-Status: GOOD (  23.77  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] Documentation: some extra steps requires for DHCP
 network configuration for sandbox on the host OS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Oleksij,

Thank you for your inputs.

I will modify the patch as per your suggestions and share it again.

The issue is I already have Qemu virbr0 bridge, so it is very easy to
setup but in case of no already configured bridge available then I am
facing some issues to setup bridge manually, I followed lots of blogs
and tutorials but none of them working for my conditions and none of
them allocates IP address to barebox, tried both dhcp (dhclient -v
br0) and statically allocate to bridge.

However, this are no issues with barebox in this case, it is something
either I am missing or misunderstanding. So, that is  why I have used
Qemu virbr0 bridge and also suggested in the documents.

Also tried the steps suggested by you but in case of virbr0 it is
working fine and easy to setup but when creating manually bridge then
it is not allocating any IP.

Please share some inputs to help me to configure manually without Qemu
so I can also document them in the docs.


Thanks and regards,
Neeraj

On Thu, Apr 22, 2021 at 10:06 AM Oleksij Rempel <linux@rempel-privat.de> wrote:
>
> Hi,
>
> thank you for your patch!
>
> Am 21.04.21 um 20:08 schrieb Neeraj Pal:
> > Signed-off-by: Neeraj Pal <neerajpal09@gmail.com>
> > ---
> >  Documentation/boards/sandbox.rst | 66 ++++++++++++++++++++++++++++++++
> >  1 file changed, 66 insertions(+)
> >
> > diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
> > index e9e518365..925dfc808 100644
> > --- a/Documentation/boards/sandbox.rst
> > +++ b/Documentation/boards/sandbox.rst
> > @@ -74,3 +74,69 @@ Available sandbox invocation options include:
> >
> >  To terminate barebox and return to the calling shell, the poweroff command is
> >  suitable.
> > +
> > +Network configuration
> > +---------------------
> > +
> > +While running the sandbox, the following steps are required
> > +
> > +* On host
> > +
> > +  * virbr0: virtual bridge interface created by Qemu (easy method)
> > +
> > +  * if Qemu virtual bridge (virbr0) is not available then manually create and configure one bridge like "br0"
> > +
> > +    .. code-block:: console
> > +
> > +        $ ip link show
> > +        4: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN mode DEFAULT group default qlen 1000
> > +            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
> > +        6: barebox: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN mode DEFAULT group default qlen 1000
> > +            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
> > +
> > +    .. code-block:: console
> > +
> > +        $ sudo apt install bridge-utils
> > +        $ sudo ifconfig barebox up
> > +        $ sudo brctl addif virbr0 barebox
> > +        $ sudo ip link set barebox master virbr0
> > +        $ sudo dhclient -v virbr0
>
> bridge-utils and ifconfig are deprecated tools. Please use ip utils instead. Usual bridge
> configuration with ip utils looks like:
>
> # create bridge interface with name br0
> ip l a name br0 type bridge
> # bring up bridge interface
>
> ip l s dev br0 up
> # link existing eth0 interface to the bridge br0
> ip l s eth0 master br0
> ip l s dev eth0 up
> ip l s eth1 master br0
> ip l s dev eth1 up
>
>
>
> In case you wont to assign static address to the bridge interface:
> ip a a 172.17.1.1/24 dev br0
>
>
> > +
> > +* On Sandbox
> > +
> > +    .. code-block:: console
> > +
> > +        barebox@Sandbox:/ devinfo eth0
> > +        Parent: tap0
> > +        Parameters:
> > +          ethaddr: 00:00:00:00:00:00 (type: MAC)
> > +          gateway: 0.0.0.0 (type: ipv4)
> > +          ipaddr: 0.0.0.0 (type: ipv4)
> > +          linux.bootargs:  (type: string)
> > +          linux.devname:  (type: string)
> > +          mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
> > +          netmask: 0.0.0.0 (type: ipv4)
> > +          serverip:  (type: string)
> > +
> > +    .. code-block:: console
> > +
> > +        barebox@Sandbox:/ dhcp eth0
> > +        WARNING: eth0: No MAC address set. Using random address c2:2c:a1:17:b8:47
> > +        T eth0: DHCP client bound to address 192.168.122.21
> > +        barebox@Sandbox:/ ping google.com
> > +        PING google.com (172.217.167.46)
> > +        host google.com is alive
> > +
> > +    .. code-block:: console
> > +
> > +        barebox@Sandbox:/ devinfo eth0
> > +        Parent: tap0
> > +        Parameters:
> > +          ethaddr: c2:2c:a1:17:b8:47 (type: MAC)
> > +          gateway: 192.168.122.1 (type: ipv4)
> > +          ipaddr: 192.168.122.21 (type: ipv4)
> > +          linux.bootargs:  (type: string)
> > +          linux.devname:  (type: string)
> > +          mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
> > +          netmask: 255.255.255.0 (type: ipv4)
> > +          serverip: 192.168.122.1 (type: string)
> >
>
>
> --
> Regards,
> Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

