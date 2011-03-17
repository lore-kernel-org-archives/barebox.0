Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 37.70.mail-out.ovh.net ([87.98.180.163]
	helo=70.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q09Mb-0004mY-6e
	for barebox@lists.infradead.org; Thu, 17 Mar 2011 09:19:26 +0000
Message-ID: <4D81D20E.3060803@eukrea.com>
Date: Thu, 17 Mar 2011 10:19:10 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4D80C8AB.4040905@nextfour.com>
In-Reply-To: <4D80C8AB.4040905@nextfour.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX25 3-stack - over-current change on port 1 - USB host port
	not	working
To: barebox@lists.infradead.org

Hi,

On 16/03/2011 15:26, Teemu Peltola wrote:
> I have Freescale i.MX25 3-stack development board + debug board attached to
> it. I have built barebox-2011.03.0 using freescale_mx25_3stack_defconfig with
> some modifications to support NAND booting (see below). I have used
> buildroot-2011.02 to create 2.6.38 kernel (CONFIG_MACH_MX25_3DS=y etc.) and
> rootfs images.
>
> When I boot these images from barebox, dmesg displays the following error
> message constantly and USB host port does not work:
>
> mxc-ehci mxc-ehci.1: GetStatus port:1 status cc001020 102 ACK POWER sig=se0 OCC
> hub 1-0:1.0: over-current change on port 1
> hub 1-0:1.0: enabling power on all ports
> hub 1-0:1.0: state 7 ports 1 chg 0000 evt 0002
>
> If I try to use Freescale RedBoot (mx25_3stack_redboot_TO1_1.bin from
> L2.6.31_09.12.00_SDK_images_MX25 package) with the same kernel and rootfs, USB
> works. Is there some initialization that is missing from barebox?
>
if you don't need USB in barebox don't enable it. I also have problems with 
OTG port under Linux when it's enabled under barebox. I didn't yet found time 
to investigate.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
