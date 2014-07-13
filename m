Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x235.google.com ([2607:f8b0:400d:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6Jdf-0002ML-SL
 for barebox@lists.infradead.org; Sun, 13 Jul 2014 13:16:25 +0000
Received: by mail-qg0-f53.google.com with SMTP id q107so338958qgd.26
 for <barebox@lists.infradead.org>; Sun, 13 Jul 2014 06:16:02 -0700 (PDT)
From: Colin Leitner <colin.leitner@googlemail.com>
Message-ID: <53C2868D.1080307@gmail.com>
Date: Sun, 13 Jul 2014 15:15:57 +0200
MIME-Version: 1.0
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <53C264D3.70604@gmail.com>
In-Reply-To: <53C264D3.70604@gmail.com>
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
To: Colin Leitner <colin.leitner@googlemail.com>, Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Daniele Lacamera <daniele.lacamera@tass.be>

> 
> I'll probably just push the patches to a github repository until picotcp lands.
> 

Patches can be found at

    https://github.com/cleitner/barebox-mcast/tree/multicast

Commits

  * 8e99783f775ef8013ea9f5e5f9fa881002cd21a2
  * f5f78253ce2e48affbb0b3bf9726b3b6e684b509
  * 0dd506b341a61855b9b526c6c0de3da2d4c4e0a9

are small cleanups to the network code and could be merged even if multicast support is deemed unnecessary.

Multicast connections are used like any other UDP connection:

    con = net_udp_new(string_to_ip("224.0.0.123"), 12345, handler, priv);
    net_udp_bind(con, 12345);

I only patched the drivers smc91111 (tested) and smc911x (untested) to receive multicast packets. Other drivers are likely just as easy to patch.

Have fun,
	Colin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
