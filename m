Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsSye-0008ST-5u
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 13:15:14 +0000
Received: from birne.hi.pengutronix.de ([2001:67c:670:100:feaa:14ff:fe28:e6f5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1fsSyQ-00057a-70
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 15:14:58 +0200
References: <20180820145215.GA22058@ravnborg.org>
 <20180820145612.17576-2-sam@ravnborg.org>
 <20180821075019.cl2r4w7zbyxilb26@pengutronix.de>
 <20180821194644.GA14835@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <73450612-5333-d00e-9889-be0633938797@pengutronix.de>
Date: Wed, 22 Aug 2018 15:14:57 +0200
MIME-Version: 1.0
In-Reply-To: <20180821194644.GA14835@ravnborg.org>
Content-Language: en-US
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 2/3] phylib: add support for reset-gpios
To: barebox@lists.infradead.org

Hello Sam,

On 08/21/2018 09:46 PM, Sam Ravnborg wrote:
> But macb.txt or the general bindigns do not mention
> a mdio child.
> And the Linux macb_main.c do not support a "mdio" node either.
> So my best guess is that the "mdio" support in macb was accidently
> ported over from fec-imx when adding DT support.
[snip]
> Considering the above I will do the following:
> a) Remove "mdio" support from macb.c

While submitting a macb patch to linux-netdev, I was asked [1] to add
support for a "mdio" subtree in the macb binding. I intend to submit
it when net-next opens for inclusion into Linux v4.20.
That way, macb would look at phys in the list of its children as well
as the children of its "mdio" child.

Just a heads up to avoid removing functionality that would've to be
reinstated later on...

[1]: https://www.spinics.net/lists/netdev/msg519196.html

Cheers
Ahmad

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
