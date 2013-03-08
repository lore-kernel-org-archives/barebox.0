Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f50.google.com ([209.85.160.50])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UE0b0-0004Ti-Qx
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 16:56:43 +0000
Received: by mail-pb0-f50.google.com with SMTP id up1so1327168pbc.23
 for <barebox@lists.infradead.org>; Fri, 08 Mar 2013 08:56:37 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1362748622.1900.4.camel@antimon>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-3-git-send-email-dev@lynxeye.de>
 <CAA4bVAEbWYWVstete_AYB_3oKRu5Rv6eAc_+91j8xwNtGNfkrQ@mail.gmail.com>
 <1362748622.1900.4.camel@antimon>
Date: Fri, 8 Mar 2013 20:56:37 +0400
Message-ID: <CAA4bVAFsi67Ym-CYZYy36trr6xH4mV-wsJseOYxB2OjhSNx=eg@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/5] tegra: switch to ARMv7 cpu type
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On 8 March 2013 17:17, Lucas Stach <dev@lynxeye.de> wrote:
> Am Freitag, den 08.03.2013, 10:03 +0400 schrieb Antony Pavlov:
>> Hi!
>>
>> This commit breaks usb ethernet card on my board.
>>
> If you are using a GCC >= 4.7 this is most likely the problem that GCC
> now produces hardware unaligned access instructions on ARMv7 by default.

I'm using GCC 4.4.6.

> Unfortunately the EHCI spec has placed one of the registers at an
> unaligned offset. Barebox traps the processor when hitting an unaligned
> access in hardware.
>
> Thanks for the heads up, I'll make sure we resolve this problem before
> this patchset goes in.
>
> Regards,
> Lucas
>



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
