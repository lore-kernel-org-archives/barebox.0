Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x22d.google.com ([2607:f8b0:400d:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X77IX-0002sg-Sm
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 18:17:55 +0000
Received: by mail-qg0-f45.google.com with SMTP id f51so5073360qge.4
 for <barebox@lists.infradead.org>; Tue, 15 Jul 2014 11:17:29 -0700 (PDT)
From: Colin Leitner <colin.leitner@googlemail.com>
Message-ID: <53C57035.5090207@gmail.com>
Date: Tue, 15 Jul 2014 20:17:25 +0200
MIME-Version: 1.0
References: <53C25B45.7010101@gmail.com>	<20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
In-Reply-To: <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
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
Subject: Re: Adding IPv4 multicast support
To: Daniele Lacamera <daniele.lacamera@tass.be>, Antony Pavlov <antonynpavlov@gmail.com>
Cc: Colin Leitner <colin.leitner@googlemail.com>, PicoTCP <picotcp@tass.be>, barebox <barebox@lists.infradead.org>

> What would you need for "network discovery"? Currently picotcp
> - mDNS (at the moment over v4 only)

That's what you want (with DNS-SD over mDNS). Sounds great and would save me lots of work :)

Thanks for your effort!

-Colin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
