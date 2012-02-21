Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rzrkd-0000n2-B9
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 15:35:41 +0000
Date: Tue, 21 Feb 2012 16:35:27 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120221163527.1a42ed2b@eb-e6520>
In-Reply-To: <20120221141011.GK9343@game.jcrosoft.org>
References: <1329784059-6006-1-git-send-email-eric@eukrea.com>
 <1329784059-6006-2-git-send-email-eric@eukrea.com>
 <20120221034835.GD9343@game.jcrosoft.org>
 <20120221080346.1501ec1f@eb-e6520>
 <20120221130318.GJ9343@game.jcrosoft.org>
 <20120221142255.547a4e67@eb-e6520>
 <20120221141011.GK9343@game.jcrosoft.org>
Mime-Version: 1.0
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
Subject: Re: [PATCH 2/7] mfd: add mc34708 driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Le Tue, 21 Feb 2012 15:10:11 +0100,
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> I still don't like the idea to export it
> =

> You need a proper API to manage the PMIC
> =

> so for today no need of this and I doubt the API will need it
> =

for today we have what is inside barebox and this patche is coherent
with what is actually inside barebox (please check other drivers in mfd
and mx35-3stack for example).
For the future we may no more need this if we have a proper PMIC API
but as this API actually is not written, this patchset makes sense.

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
