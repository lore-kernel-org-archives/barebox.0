Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WsdI9-00011B-1K
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 19:25:37 +0000
Received: by mail-wi0-f180.google.com with SMTP id hi2so4152890wib.7
 for <barebox@lists.infradead.org>; Thu, 05 Jun 2014 12:25:12 -0700 (PDT)
MIME-Version: 1.0
From: Frederik Van Slycken <frederik.van.slycken@gmail.com>
Date: Thu, 5 Jun 2014 21:24:51 +0200
Message-ID: <CAGF38F=VxqD8L3EqZUneAvXHTtORDPXcOEynfbjaK_Zu2Zuh6w@mail.gmail.com>
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
Subject: picoTCP, barebox, and licenses
To: antonynpavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Dear Antony,

I applaud that you're working on incorporating picoTCP into barebox -
I work for the company that developed picoTCP, and so I am naturally
enthusiastic about this. However, one small thing that should be taken
into account, concerning licensing.

According to the wiki, barebox is licensed under "gplv2 or later",
while picoTCP is licensed only under gplv2. I Am Not A Lawyer, but I
think this means that, if your work would at some point make it into
the master branch of barebox, the licensing notes may need to be
changed to something like "either version 2 of the License, or (at
your option) any later version (except for the picoTCP part, which is
version 2 only)."

Another option would be for barebox to drop the "or later"-part...
although some people here may feel strongly about keeping it in.
(Let's just hope I didn't ignite a gplv2/v3 flame war by suggesting
this!)

Maybe there are other options - what are your thoughts on this issue?



Keep up the good work!

Best Regards,
Frederik Van Slycken

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
