Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4wLK-0005W7-VM
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 16:02:43 +0000
Received: by iaai1 with SMTP id i1so3798964iaa.36
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 09:02:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAEhpT-XD0M3hrmxANPKt2BsgFhEtdFfA4HXenqty1QGLdaeS5w@mail.gmail.com>
References: <CAEhpT-XD0M3hrmxANPKt2BsgFhEtdFfA4HXenqty1QGLdaeS5w@mail.gmail.com>
Date: Fri, 24 Aug 2012 20:02:40 +0400
Message-ID: <CAA4bVAHSMjQDgxHngj_2EGwfg2Me8_LVW0CwMkR-vjmZcoqfVQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Is there any way to dump more than 0x100 bytes from nand flash?
To: Calvin Johnson <linux.cj@gmail.com>
Cc: barebox@lists.infradead.org

On 24 August 2012 18:19, Calvin Johnson <linux.cj@gmail.com> wrote:
> Hi,
>
> In U-Boot there is "nand dump <address>" command which is very useful
> to check the contents of the NAND page and OOB area.
>
> I tried searching for an alternative in Barebox, and found that we can
> use some thing like "md -b -s /dev/nand0.barebox.bb". But this will
> dump only 0x100 bytes. In order to increase the size, I need to
> compile again.
> Is there any way to dump more bytes from the NAND flash and from
> different blocks/pages?
>

please try "md -b -s /dev/nand0.barebox.bb <dump offset>+<dump size>",
e.g.
  md -b -s /dev/nand0.barebox.bb 0+0x200

> How are the experts working with this?
>

Sorry, I'm not an expert :)))

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
