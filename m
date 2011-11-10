Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROY2K-0003Gw-Tq
 for barebox@lists.infradead.org; Thu, 10 Nov 2011 17:03:37 +0000
Received: by wyi11 with SMTP id 11so1987757wyi.36
 for <barebox@lists.infradead.org>; Thu, 10 Nov 2011 09:03:34 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20111110141821.GG17366@game.jcrosoft.org>
References: <1320854621-633-1-git-send-email-h.feurstein@gmail.com>
 <20111110141821.GG17366@game.jcrosoft.org>
Date: Thu, 10 Nov 2011 18:03:34 +0100
Message-ID: <CAFfN3gX4CfoEmjsaiD=pmrO+QbZXNR0vL2=k6-e2A=OQcnFGvw@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Subject: Re: [PATCH] at91: add config option for ohci driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

2011/11/10 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
[snip]
>> -obj-$(CONFIG_ARCH_AT91) =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D ohci-at91.o
>> +obj-$(CONFIG_USB_OHCI_AT91) =A0+=3D ohci-at91.o
> no need such config
>
> =A0on AT91 you just need to enable the OCHI
>
> Best Regards,
> J.
>

without that the ohci-at91 is _always_ compiled and linked into
barebox, even when 'USB support' is unselected.

Best Regards
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
