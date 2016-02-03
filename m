Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x231.google.com ([2607:f8b0:4001:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQlx5-0002M1-KD
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 01:09:48 +0000
Received: by mail-ig0-x231.google.com with SMTP id hb3so57972igb.0
 for <barebox@lists.infradead.org>; Tue, 02 Feb 2016 17:09:27 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160201101007.GA4118@pengutronix.de>
References: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
 <20160201101007.GA4118@pengutronix.de>
Date: Tue, 2 Feb 2016 17:09:26 -0800
Message-ID: <CAHQ1cqGUQ0OFv6vQLWyxu4up3+JyDqYVpOx8k4uHvGqkRRoGTw@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [RFC 1/2] misc: Add MAC address mapper "driver"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>
> I wonder if the correct way to do this wouldn't be nvmem, see
> Documentation/devicetree/bindings/nvmem/nvmem.txt in the Kernel.
> This would mandate a binding like:
>
>         ocotp {
>                 mac1: mac@88 {
>                         reg = <0x88 0x6>;
>                 };
>         };
>
>         &fec {
>                 nvmem-cells = <&mac1>;
>                 nvmem-cell-names = "mac-address";
>         };

I completely forgot about that API! I think you are right that would
be a better way to implement what I am trying to do. I'll do some
experimentation with this approach and see what I can come up with.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
