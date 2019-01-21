Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward105o.mail.yandex.net ([37.140.190.183])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glYn6-0002hZ-3P
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 12:35:02 +0000
Received: from mxback21o.mail.yandex.net (mxback21o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::72])
 by forward105o.mail.yandex.net (Yandex) with ESMTP id B96BB420045A
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2019 15:34:49 +0300 (MSK)
From: Seraphim Dolbilov <s.dlblv@ya.ru>
MIME-Version: 1.0
Date: Mon, 21 Jan 2019 15:34:49 +0300
Message-Id: <49608661548074089@myt5-f1576e7b5bad.qloud-c.yandex.net>
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
Subject: Re: [HELP] Barebox porting
To: Barebox List <barebox@lists.infradead.org>

Hi friends,

I need some help with barebox environment management. I've added env/config file
to arch/arm/myboard/ directory, fixed Makefile with `bbenv-y += env` string, but
this config file doesn't apply on barebox boots. What can be the reason for such a problem?

--
Yours sincerely,
Seraphim Dolbilov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
