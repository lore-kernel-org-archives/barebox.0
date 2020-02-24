Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CFP-0002gy-Of
 for barebox@lists.infradead.org; Mon, 24 Feb 2020 11:50:05 +0000
References: <CAGm1_ku5kzBoxiRYks2uLYt1D6-QPB0vJm0DygF8a2WXTC6NoQ@mail.gmail.com>
 <92a929cc-b9e6-db9b-352d-c7c271a29558@pengutronix.de>
 <CAGm1_ktTGx1MMY-jcbVrOwnwqHeHm8Qe2f2iRxEQxmY0y5HM4g@mail.gmail.com>
 <43978130-6f7d-759c-ef63-a005cb6f0934@pengutronix.de>
 <CAGm1_kt6wpsn_o4djfmycA=H3gcZEOPYoQLX=uL11jo8mb6cwQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c58c0ce8-a2ad-8b34-debf-d120deb43df2@pengutronix.de>
Date: Mon, 24 Feb 2020 12:50:00 +0100
MIME-Version: 1.0
In-Reply-To: <CAGm1_kt6wpsn_o4djfmycA=H3gcZEOPYoQLX=uL11jo8mb6cwQ@mail.gmail.com>
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
Subject: Re: musb is broken in master
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: t.remmet@phytec.de, barebox <barebox@lists.infradead.org>

Hi,

On 2/24/20 12:09 PM, Yegor Yefremov wrote:
> Can it be that musb was broken because of this change in the mainline
> linux kernel [1]?

But you said that it works when you readd status = "okay" to some
of the USB device tree nodes? Which node was it in particular?

> The kernel uses ti-sysc mechanism to get/configure the related hw
> blocks. If I grep for ti-sysc in kernel, I get a lot of hits. But in
> barebox, it is only drivers/bus/ti-sysc.c that I find. Seems like a
> rather big update is required.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/am33xx.dtsi?h=v5.6-rc3&id=0782e8572ce43f521ed6ff15e4a7ab9aa5acdc85

I don't think that's the problem. Looks to me like it should work with
barebox as well. Or did you revert this patch and got USB working again?

Cheers
Ahmad

> 
> Yegor
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
