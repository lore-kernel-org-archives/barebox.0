Delivery-date: Wed, 21 Apr 2021 13:34:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZB7e-0001vx-DI
	for lore@lore.pengutronix.de; Wed, 21 Apr 2021 13:34:22 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZB7d-0005PL-7N
	for lore@pengutronix.de; Wed, 21 Apr 2021 13:34:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s54ZnKTdBhxrXlZbu3dP7K+4YlikgyhT9Se5+eTmfJE=; b=H2ZPHG/wmrFwDOpnvQc4eLeC0
	xmhB0Hjs8THsH+CcyFsilwrToAbuqvCIAU3QLv4MN2deapejk31xY6p1v+U+NWWajj8GGhqKIXrmN
	kSHuFuD3XQY/sDxc5rjl7iCa9hjQOyumi2sDOhFUcLJ3QUMXFr2pAybQNjuHJ1FT8wngc/zImwFld
	AzhnARzivv06urW7qszjcXzhdjYVMqTY+ZAPQ8AwMetAKuic5rHfwANkpqKBkxntfehfvPFcQINh1
	c1muMUzWM5uQsD8dCJjXDW4DEIfNgSGjbEAFedf4Y6Wtd2wvo9nqWij7HiP2z0RTJxxucuAtMSYkm
	lqTFkBujg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZB6Q-00EJGv-T6; Wed, 21 Apr 2021 11:33:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZB6J-00EJGn-NN
 for barebox@desiato.infradead.org; Wed, 21 Apr 2021 11:32:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=3EVENDiN/5WiSzFtQpwDnN3kBp8PlJA3zwsEm69q0/8=; b=fnQUpB3PuA874NmcKKI93EcZGc
 eLa8in0NM4OGfyFrGuX7/g7AnuCwOoudnQvp4+jn9pp+cXNNBulFFPZPfUdZxgoUqX58HVbTLLk1C
 Mg5WhxGrIq7KiZjzM7J5nySFtao4RKNs42H0gpXgvTq7JrIWv+K95/Pjb48QMJVNP2EZ+JVcn2OFG
 PmzPDoQ7fd/y+hj3Q6Pv30o7hxF4M2MKObDO1+ku3P/vKGJ0s7Hq3gFJ4p8v4MFwe+EvozY9KKysr
 dyYcHSbVMjz+qTV7nABbSlQs0MzbRqsjShL8ZwIK4a/blGNL5DgNPZChwRjLTS71ilIw1rSmMMbNb
 IbqmPv0A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZB6G-00Cq3u-Ko
 for barebox@lists.infradead.org; Wed, 21 Apr 2021 11:32:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lZB6F-0005KS-3o; Wed, 21 Apr 2021 13:32:55 +0200
To: Neeraj Pal <neerajpal09@gmail.com>
Cc: barebox@lists.infradead.org
References: <CANi4_RUeUVWkfLgJZxx_eHoJmXLHLwQ7+eF8+yehNV_CwNQ1yQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <001dcf38-fff0-703a-012b-7cfb826d8899@pengutronix.de>
Date: Wed, 21 Apr 2021 13:32:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CANi4_RUeUVWkfLgJZxx_eHoJmXLHLwQ7+eF8+yehNV_CwNQ1yQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_043256_726658_98FB4E01 
X-CRM114-Status: GOOD (  27.96  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: sandbox.rst: added dhcp network
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Neeraj,

On 20.04.21 20:17, Neeraj Pal wrote:
> Hello Ahmad,
> 
> I have added the DHCP network configuration as discussed
> (http://lists.infradead.org/pipermail/barebox/2021-April/035795.html)
> Please confirm and let me know if needs any modifications.
> 
> Thanks,
> Neeraj

Thanks.
Please send this as Git patch, i.e. with a commit message. This is most
easily done, by using git send-email. Write something in the commit message
that explains the change, e.g.:

  Network configuration on sandbox requires some extra steps on the host
  OS. Document these.

And don't forget your Signed-off-by. You should also mark the patch as v2
(pass -v2 to git send-email if you use that).

Some more comments inline.

> 
> diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
> index e9e518365..7016312e9 100644
> --- a/Documentation/boards/sandbox.rst
> +++ b/Documentation/boards/sandbox.rst
> @@ -74,3 +74,79 @@ Available sandbox invocation options include:
> 
>  To terminate barebox and return to the calling shell, the poweroff command is
>  suitable.
> +
> +Network configuration for Sandbox
> +-------------------------------------------------

I am not sure Sphinx likes it when the line is longer than the
text. Please adjust and while at it you could drop the "for Sandbox"
part. The whole file (and resulting page) is about sandbox.

> +
> +After running the sanbox, the following steps are required to configure network

s/sanbox/sandbox/. Do you do do these steps while sandbox is running?
If so, it might be better written as While sandbox is running, ... etc.

> +through dhcp.
> +Following configuration tested on Ubuntu 20.04 focal LTS

I think you can safely omit this line, but it doesn't hurt.

> +
> +* On host
> +
> +  * virbr0: virtual bridge interface created by Qemu (easy method)
> +
> +  * if Qemu virtual bridge (virbr0) is not available then manually
> create and configure one bridge like "br0"
> +
> +    .. code-block:: console
> +
> +        $ ip link show
> +        1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state
> UNKNOWN mode DEFAULT group default qlen 1000
> +            link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
> +        2: enp0s31f6: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500
> qdisc fq state DOWN mode DEFAULT group default qlen 1000
> +            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
> +        3: wlp4s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc
> noqueue state UP mode DORMANT group default qlen 1000
> +            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
> +        4: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc
> noqueue state DOWN mode DEFAULT group default qlen 1000
> +            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff

You could delete the interfaces that are irrelevant, but that's just a nitpick.

> +        5: virbr0-nic: <BROADCAST,MULTICAST> mtu 1500 qdisc fq master
> virbr0 state DOWN mode DEFAULT group default qlen 1000
> +            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
> +        6: barebox: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state
> DOWN mode DEFAULT group default qlen 1000
> +            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
> +
> +    .. code-block:: console
> +
> +        $ sudo apt install bridge-utils
> +        $ sudo ifconfig barebox up
> +        $ sudo brctl addif virbr0 barebox
> +        $ sudo ip link set barebox master virbr0
> +        $ sudo dhclient -v virbr0
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
> +        WARNING: eth0: No MAC address set. Using random address
> c2:2c:a1:17:b8:47
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

The rest looks fine.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

