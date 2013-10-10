Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx8-out.webonline.biz ([41.86.105.118]
 helo=assp01.webonline.biz)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VUG1p-0004vj-Kd
 for barebox@lists.infradead.org; Thu, 10 Oct 2013 13:11:47 +0000
Received: from ASSP.nospam (localhost.localdomain [127.0.0.1])
 by assp01.webonline.biz (Postfix) with ESMTP id 2728F3A09F
 for <barebox@lists.infradead.org>; Thu, 10 Oct 2013 15:10:55 +0200 (SAST)
Date: Thu, 10 Oct 2013 06:10:42 -0700
From: Ivor Kruger <ivor@veriline.co.za>
Message-ID: <CE7BF428.8D50%ivor@veriline.co.za>
In-Reply-To: <1381390941.11504.41.camel@coredoba.hi.pengutronix.de>
Mime-version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Writing to I2C device during Barebox boot
To: barebox@lists.infradead.org

Jan, thanks for the reply, I will look into using git-send-email a bit
later since I am going to travel this morning fro a few hours.

My question was however a little bit more generic. Take for example the
PCM049 board.c file. One of the I2C components it loads is the TWL6030. If
I wish to write to a register on this device, how would I go about it.

By the way, I am using PHYTEC_PD13_Linux from pengutronix. It includes
barebox-2013-06.0

Thanks for your help.
Ivor

On 2013/10/10 12:42 AM, "Jan L=FCbbe" <jlu@pengutronix.de> wrote:

>On Wed, 2013-10-09 at 18:59 -0700, Ivor Kruger wrote:
>> But this is where my linux knowledge is letting me down.
>> =

>> How do I get a "handle" to the device in order to call the write_reg
>> function?
>> =

>> Your pointers and help is much appreciated.
>
>Could you show us your code? That would make helping you much easier.
>Please see 'man git-send-email' on how to send patches with git.
>
>Regards,
>Jan
>-- =

>Pengutronix e.K.                           |                             |
>Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
>
>_______________________________________________
>barebox mailing list
>barebox@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
