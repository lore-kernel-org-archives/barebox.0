Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sm18V-0006ai-8S
 for barebox@lists.infradead.org; Tue, 03 Jul 2012 11:19:17 +0000
Message-ID: <4FF2D519.60305@free-electrons.com>
Date: Tue, 03 Jul 2012 13:18:49 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1341238494-30914-1-git-send-email-maxime.ripard@free-electrons.com>
 <20120703073926.GU2698@pengutronix.de>
In-Reply-To: <20120703073926.GU2698@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add support for kernel and device tree images stored
 in a partition
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

Hi Sascha,

Le 03/07/2012 09:39, Sascha Hauer a =E9crit :
> On Mon, Jul 02, 2012 at 04:14:53PM +0200, Maxime Ripard wrote:
>> It is a quite common setup to have a partition with all you need to boot
>> from the bootloader, ie the kernel image, the device tree blob, etc.
>>
>> This patch introduces a new "file" location for these two images, which
>> uses in turn the *_part and the new *_part_type variable specifying the
>> fs type used by mount.
> =

> That was one of the major shortcomings of the default environment and
> one of the main reasons I created a new environment template. Have you
> considered using it?

Ha, I think I missed it :)
It looks quite useful indeed.
I will drop this patch then and send an updated version once I'll be
able to use it properly.

Thanks!
Maxime


-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
