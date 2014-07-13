Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f180.google.com ([209.85.217.180])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6KuG-00023p-Mo
 for barebox@lists.infradead.org; Sun, 13 Jul 2014 14:37:37 +0000
Received: by mail-lb0-f180.google.com with SMTP id w7so2084356lbi.25
 for <barebox@lists.infradead.org>; Sun, 13 Jul 2014 07:37:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
Date: Sun, 13 Jul 2014 16:28:58 +0200
Message-ID: <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
From: Daniele Lacamera <daniele.lacamera@tass.be>
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Colin Leitner <colin.leitner@googlemail.com>, PicoTCP <picotcp@tass.be>, barebox <barebox@lists.infradead.org>

On Sun, Jul 13, 2014 at 12:55 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> On Sun, 13 Jul 2014 12:11:17 +0200
> Colin Leitner <colin.leitner@googlemail.com> wrote:
>
>> Hello everyone,
>>
>> I'm working on adding multicast support to barebox (for device discovery) and wanted to know if there's interest in having that included in upstream.
>
> There is an initiative on integrating picotcp into barebox.
>
> picotcp is a free TCP/IP stack implementation, see
>   https://github.com/tass-belgium/picotcp
>
> AFAIK latest picotcp-enbled barebox anounced here:
>   http://lists.infradead.org/pipermail/barebox/2014-June/019723.html
>
> Can be network device discovery realized using picotcp entities?
>
> To Daniele: how things stand with picotcp tftp support?
>
>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>
>
> --
> --
> Best regards,
>   Antony Pavlov

TFTP is integrated in masterbranch, documented and tested.
PicoTCP app can act as TFTP server as well as client. Supports put/get
operations. Tested against tftp(d)-hpa.

What would you need for "network discovery"? Currently picotcp
supports the following protocols:
- IPv6 neighbor discovery
- IPv4 SLAAC (like avahi-style autoconf)
- mDNS (at the moment over v4 only)
- OLSR (automatic detection of neighbors and best route calculation to
N-hops nodes)


Regards,

-- 
Daniele

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
