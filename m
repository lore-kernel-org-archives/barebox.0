Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDxAY-00018N-RV
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 13:17:07 +0000
Message-ID: <1362748622.1900.4.camel@antimon>
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 08 Mar 2013 14:17:02 +0100
In-Reply-To: <CAA4bVAEbWYWVstete_AYB_3oKRu5Rv6eAc_+91j8xwNtGNfkrQ@mail.gmail.com>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-3-git-send-email-dev@lynxeye.de>
 <CAA4bVAEbWYWVstete_AYB_3oKRu5Rv6eAc_+91j8xwNtGNfkrQ@mail.gmail.com>
Mime-Version: 1.0
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am Freitag, den 08.03.2013, 10:03 +0400 schrieb Antony Pavlov:
> Hi!
> 
> This commit breaks usb ethernet card on my board.
> 
If you are using a GCC >= 4.7 this is most likely the problem that GCC
now produces hardware unaligned access instructions on ARMv7 by default.
Unfortunately the EHCI spec has placed one of the registers at an
unaligned offset. Barebox traps the processor when hitting an unaligned
access in hardware.

Thanks for the heads up, I'll make sure we resolve this problem before
this patchset goes in.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
