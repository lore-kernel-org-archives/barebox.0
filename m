Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-x231.google.com ([2607:f8b0:400d:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6HOP-0007M9-2E
 for barebox@lists.infradead.org; Sun, 13 Jul 2014 10:52:31 +0000
Received: by mail-qa0-f49.google.com with SMTP id dc16so2269999qab.22
 for <barebox@lists.infradead.org>; Sun, 13 Jul 2014 03:52:07 -0700 (PDT)
From: Colin Leitner <colin.leitner@googlemail.com>
Message-ID: <53C264D3.70604@gmail.com>
Date: Sun, 13 Jul 2014 12:52:03 +0200
MIME-Version: 1.0
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
In-Reply-To: <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
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
To: Antony Pavlov <antonynpavlov@gmail.com>, Colin Leitner <colin.leitner@googlemail.com>
Cc: barebox@lists.infradead.org, Daniele Lacamera <daniele.lacamera@tass.be>

> Can be network device discovery realized using picotcp entities?

A quick glance at picotcp seems to indicate mcast support, so that should work.

I'll probably just push the patches to a github repository until picotcp lands.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
