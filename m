Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAXMQ-0005qG-2d
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 05:48:35 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0F32910006B9
 for <barebox@lists.infradead.org>; Thu,  2 Jul 2015 07:48:00 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150702054208.GE18611@pengutronix.de>
Date: Thu, 2 Jul 2015 13:47:42 +0800
Message-Id: <912F94D9-2689-4F1F-86EA-19FC46F6247D@jcrosoft.com>
References: <CABQt-UnvAoFHp_4LJvH0Q6AFw8US2vhcb_nOGGmjfAaCXrOFWQ@mail.gmail.com>
 <20150702054208.GE18611@pengutronix.de>
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
Subject: Re: how to do a digest on a flashed uImage ?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Philippe Leduc <ledphilippe@gmail.com>, barebox@lists.infradead.org


> On Jul 2, 2015, at 1:42 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> Hi Philippe,
> 
> On Wed, Jul 01, 2015 at 09:02:28AM +0200, Philippe Leduc wrote:
>> Hello,
>> 
>> I have a uImage saved in a memory partition and I am able to boot on
>> it with bootm command. I would like to add a digest (like a
>> hmac(sha1)) in order to check the integrity of the binary before
>> booting on it.
>> 
>> Because my partition is bigger than my uImage, I don't know how to use
>> digest on it.
>> In fact there are two problems that I don't know how to solve: I can't
>> get the size of my file and I can't ask digest to work on COUNT bytes.
>> 
>> For the size problem: I can extract the size of the uImage in binary
>> form since this information is present in the uImage header (via
>> memcpy), but I don't know how to convert it in a format compatible
>> with Hush.
>> 
>> For digest, I can copy the binary in the RAM, but I fear that it is
>> longer than working on the flash: it takes 4,8s to memcpy the uImage
>> in a RAM file, and less than 3s to bootm on the flash. But
>> 
>> 
>> Do you know a way to get the size of a file? Or to convert a binary
>> size into a "human readable format" for Hush? Or should I develop a
>> kind of "stat" utility for barebox?
>> Thank you in advance,
> 
> I can't think of a way on the shell to accomplish this. Something that
> might come close is uImagefs. You can mount an uImage as a filesystem,
> then you can run digest on the individual contents of the image, but not
> of the whole image itself.
> 
> Also extracting the size from the image via memcpy and somehow convert
> the value to hex, then memcpy the uImage to a file sounds fragile. I
> would probably add a option to the uimage command, like -c for copy.
> In C it's easy to sanity check the size you read and to verify the
> header checksum before doing anything else. You can't do that in shell.

uImageFS was design exactly for this case

Best Regards,
J.

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
