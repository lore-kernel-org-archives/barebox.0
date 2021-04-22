Delivery-date: Thu, 22 Apr 2021 06:38:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZR6n-0003LA-EK
	for lore@lore.pengutronix.de; Thu, 22 Apr 2021 06:38:33 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZR6m-0001oj-G7
	for lore@pengutronix.de; Thu, 22 Apr 2021 06:38:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xxHJHCZDKvecSL74bWQvXwVfpJPXbR6J5UthziEoAz4=; b=dymC579cXeyOiK+kcZ9nDJppU
	UyOWM0Yl8pQfkae/w5kSPOxpUXIH7HIpFCJB/plQX/nmnnm4dIMlHjIaqbD46d3NgjT3ok0HcAsMg
	/k2+DwqIYeVpp/eG4TSw21RhY2MCN7AO/i1EEmGF1M+5oodiI88aB28BXlBF5Gol4Mcmt7F4GCzC8
	fzJV+n3aQEdMqH+WLKXPhrywyINuTk0OuWLqVomcmLXoJ0MlfmF6/QujF3IfltZ79wXuELIkYMCBQ
	cVGJm7DMeBzDOpJ6Yt8ejZttkQT7SodZfMRJ14/94RoXLt2lx9YvcnggPoPJU7yLD0EemLhnCME7d
	RpEx3aBsQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZR5W-00FqvW-5y; Thu, 22 Apr 2021 04:37:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZR5Q-00Fqul-H3
 for barebox@desiato.infradead.org; Thu, 22 Apr 2021 04:37:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=AIohjb6Q7Ogrbzn17FUG/muRlnFI0AkDS2oA4hsqzQM=; b=qfgXFpgzt+8BDg1+rpew5H5Z3m
 2WbRXdIBffBScj4aE1dfWNEdNfsPrSk70GbKH9o8IjVBH1DambBCILw4j7rXXXsoOIJXvB1fuoeXL
 bViwdYrLUzDFifQlq+IHG9WvpxvqbTf+7HW1HCqjyYcu1ywZ8rWve8lKF4lMI7VYs06uL6CAutOcP
 WBIqQvtQFVhkb6oX3SP9OcKkOp3uAgqE+3fCBpL4QYxq6hUCv/dlW2gY/jhv29vkWle8mTEsC6zGH
 ToMICeIm5sxn6RIidYKXzFK5ZVL/ZCUZDFQXUq4bLGjh/uN+M4dEFSH/Ww/fjgg1/amXnjOLtXOi9
 sHsPpOug==;
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZR5N-00DMl1-GX
 for barebox@lists.infradead.org; Thu, 22 Apr 2021 04:37:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1619066216;
 bh=gqlzgwGGhBd/OMcze8Rt0Hwi6CpdKZNlbSDR4RLHoGc=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=gy/hFFPuuap8X3nHmvykaxv5dY3IDaVmMLR38qZ/SY166zfGkhmXzMxzhodYq9Q4A
 E620OOESINbe5JseYgPt8qZzMiqYwCQZ3F7z7Rf76uiVR/8ATmp7P9Y8WUnJ7fAcQj
 js14qTKnqOS9oKTlwPQtDH0mIi0G3RVF4KncUb6I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.55] ([95.91.192.147]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MzyuS-1lNf4A1QQg-00x41G; Thu, 22
 Apr 2021 06:36:56 +0200
To: Neeraj Pal <neerajpal09@gmail.com>, a.fatoum@pengutronix.de
Cc: barebox@lists.infradead.org
References: <CANi4_RV5d9-FgoJjCebMGn4cjQ_DrqqLs0XdC2wUzn6qFKviHw@mail.gmail.com>
 <20210421180759.10957-1-neerajpal09@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <790f7dec-aef4-6e9c-c34c-d0001440956a@rempel-privat.de>
Date: Thu, 22 Apr 2021 06:36:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210421180759.10957-1-neerajpal09@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:uqIagiqeqWvaV3hAdKX8PUn1u70rb/WawMNanH6mg8ZxcI1S1lh
 +HZuD14ja0j8oH880x649fbsw2fnPjDDUI4hb0XPOkGw2AF2q1PswYmtzsmB8Q1zsnTP74y
 gKgnkD/UehmKA48YzhmSbX/WYEarGm1zpg9IlYnHLNojZItapz6oCkTMhCT0Eb3G0bxWEz7
 YkXqDqLnrnc27wzriUDlg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HyWnG7xTXj4=:P9c+JLOO09PZIHgSCG1sdD
 pv3+DxYJHncrCZEgJCCXgOgKCtM/6mZqApyrsvehKfcVRRn01rfe17n1zWwxDA12aQ/AK6TYa
 gasHAg46VUJNoZMtpu4a7Km/QekUz8zMlhmQWUz8VexXL8+PJJjRr0Nvs4EdsvJj3hBq3scy7
 ktTGiatshCYTdJaouUdlLly7I7q+Q0ZT/Ueq2BnnhpTDem+UlAcGKJWl8OqkN4GQB4V+bdgWz
 Nck8+5fghWW5nRJXpJst+1J9uO1cnWIwLGKOT85gzbBvXxJHTJrzmI3Uto54yh5BMfn+uiiKr
 UoCspVIHmsoJcN6Ypa9agRXg2N444YB55Ii0WG2xImBLFXdee170qwX2o6oBh/XysfoYjRsO0
 HJxWLqGWPEHuvOkOeuRYte3Ulut/k1Tsc8qABrNtXd0rC5pXDdDLTx4lVFs9kwMnc5ZlZYc9Z
 3Xq2nUEo/bEjmHaHdngBJDHkSMt65jd9fhu1oRVxptIutI4UPgg8aW5T9Yx2v8YiUeu+cYAvt
 o/x/WuqxuV3DGPjGmFkk5D8GymU2I5RDHzrnGYTc9QISrCHdoaxbYpc2kRvgHYoJxSEJFk53s
 bz/Lsn6NH6rZl79IhYLujbQrTB+W0aUAqfngitIpDnxf3py+cnYiwehnAxQz51h1o85j4DLBq
 xMoEDUL6WxaI4NXObeNjRhBnxv1fSVju5trLA3c0Eq9bE30IzqZQI6EI08mZM/S08F0h9IctE
 hZtm2TjEVaGkg5XYT1xu0c5U2WGP4Gce1AtR3zeDISbjETl7sLydpM8vQpMj98BnVX8ZwennY
 Ch81/yIbm408lJmozb288CRMa7hvpg7Js2uo4etaxyTsYbYm+ghAO+qXuwsXb+b+BjisJB7s8
 /h7N2ekcrnuC6v8etu3+qj7Z0f4WoNC+nT7C/KLmczlBia4r1TJR7B27zkp1hOd8/Ig4S+mlI
 PaK+rL0/CEof+Q7PuED8xVsMCP5vHkZHPmpsJSjZhNkOlYetkhGsicyQCXKuFliEN6SYyRa1G
 nSXer/RwhpggLxdd8n0lWW99wYyMs8D7Rg/NYROOOcISlZTuEbxS0xUJ0uCeeQCehqsIleYNp
 ScfuG+OY+BMTpbFy0NsTUaTXIq/lXxAsetyTmdpm2GvmypYnUNwGCNcrJx5jEfY3JPfcb3TWq
 ovrao5n8EnHZ03XI6uey7fZE7jr5ToEMJv0bWhrh/QSiUgzvUle12SmvEsBQdy7DQ+3PxRyGB
 MJgC2aMEDxkWXSFaA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_213705_911636_01847174 
X-CRM114-Status: GOOD (  16.18  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] Documentation: some extra steps requires for DHCP
 network configuration for sandbox on the host OS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

thank you for your patch!

Am 21.04.21 um 20:08 schrieb Neeraj Pal:
> Signed-off-by: Neeraj Pal <neerajpal09@gmail.com>
> ---
>  Documentation/boards/sandbox.rst | 66 ++++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
>
> diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
> index e9e518365..925dfc808 100644
> --- a/Documentation/boards/sandbox.rst
> +++ b/Documentation/boards/sandbox.rst
> @@ -74,3 +74,69 @@ Available sandbox invocation options include:
>
>  To terminate barebox and return to the calling shell, the poweroff command is
>  suitable.
> +
> +Network configuration
> +---------------------
> +
> +While running the sandbox, the following steps are required
> +
> +* On host
> +
> +  * virbr0: virtual bridge interface created by Qemu (easy method)
> +
> +  * if Qemu virtual bridge (virbr0) is not available then manually create and configure one bridge like "br0"
> +
> +    .. code-block:: console
> +
> +        $ ip link show
> +        4: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN mode DEFAULT group default qlen 1000
> +            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
> +        6: barebox: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN mode DEFAULT group default qlen 1000
> +            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
> +
> +    .. code-block:: console
> +
> +        $ sudo apt install bridge-utils
> +        $ sudo ifconfig barebox up
> +        $ sudo brctl addif virbr0 barebox
> +        $ sudo ip link set barebox master virbr0
> +        $ sudo dhclient -v virbr0

bridge-utils and ifconfig are deprecated tools. Please use ip utils instead. Usual bridge
configuration with ip utils looks like:

# create bridge interface with name br0
ip l a name br0 type bridge
# bring up bridge interface

ip l s dev br0 up
# link existing eth0 interface to the bridge br0
ip l s eth0 master br0
ip l s dev eth0 up
ip l s eth1 master br0
ip l s dev eth1 up



In case you wont to assign static address to the bridge interface:
ip a a 172.17.1.1/24 dev br0


> +
> +* On Sandbox
> +
> +    .. code-block:: console
> +
> +        barebox@Sandbox:/ devinfo eth0
> +        Parent: tap0
> +        Parameters:
> +          ethaddr: 00:00:00:00:00:00 (type: MAC)
> +          gateway: 0.0.0.0 (type: ipv4)
> +          ipaddr: 0.0.0.0 (type: ipv4)
> +          linux.bootargs:  (type: string)
> +          linux.devname:  (type: string)
> +          mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
> +          netmask: 0.0.0.0 (type: ipv4)
> +          serverip:  (type: string)
> +
> +    .. code-block:: console
> +
> +        barebox@Sandbox:/ dhcp eth0
> +        WARNING: eth0: No MAC address set. Using random address c2:2c:a1:17:b8:47
> +        T eth0: DHCP client bound to address 192.168.122.21
> +        barebox@Sandbox:/ ping google.com
> +        PING google.com (172.217.167.46)
> +        host google.com is alive
> +
> +    .. code-block:: console
> +
> +        barebox@Sandbox:/ devinfo eth0
> +        Parent: tap0
> +        Parameters:
> +          ethaddr: c2:2c:a1:17:b8:47 (type: MAC)
> +          gateway: 192.168.122.1 (type: ipv4)
> +          ipaddr: 192.168.122.21 (type: ipv4)
> +          linux.bootargs:  (type: string)
> +          linux.devname:  (type: string)
> +          mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
> +          netmask: 255.255.255.0 (type: ipv4)
> +          serverip: 192.168.122.1 (type: string)
>


--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

