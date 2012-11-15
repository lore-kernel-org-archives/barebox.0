Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f49.google.com ([209.85.220.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYsGl-0006RM-AQ
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 05:45:44 +0000
Received: by mail-pa0-f49.google.com with SMTP id bi5so789777pad.36
 for <barebox@lists.infradead.org>; Wed, 14 Nov 2012 21:45:40 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20121115031146.GA31296@greatfirst.com>
References: <20121115031146.GA31296@greatfirst.com>
Date: Thu, 15 Nov 2012 09:45:40 +0400
Message-ID: <CAA4bVAFqCPkRGrz1oENQ3s9k99o=wPVq1RWSdiRJjeY1Mgkt3g@mail.gmail.com>
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
Subject: Re: how to download a file to specified mem location using tftp
To: barebox <barebox@lists.infradead.org>

On 15 November 2012 07:11, zzs <zzs213@126.com> wrote:
> tftp command only have filename args, Now I want
> download a file to mem loctaion, ex 0x21f00000.
> How to do that?
>
> --
> Best Regards,
> zzs


AFAIR,
 memcpy -s /mnt/tftp/file -d /dev/mem 0 <memaddr> <size>

(but /dev/mem is default value for -d).


> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
