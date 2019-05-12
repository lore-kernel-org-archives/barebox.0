Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPwml-00074C-A3
 for barebox@lists.infradead.org; Sun, 12 May 2019 22:17:36 +0000
Received: by mail-ot1-x32a.google.com with SMTP id g18so9817002otj.11
 for <barebox@lists.infradead.org>; Sun, 12 May 2019 15:17:34 -0700 (PDT)
MIME-Version: 1.0
From: Geordan Neukum <gneukum1@gmail.com>
Date: Sun, 12 May 2019 22:17:19 +0000
Message-ID: <CA+T6rvHH7Nd+xTAch5tQqJ6Y5tKKWHcfGjGuDp9BYJEjOvrxBA@mail.gmail.com>
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
Subject: distclean removing LICENSES .gitignores
To: barebox@lists.infradead.org

When on the master branch, I noticed that running a "make distclean"
will remove:

    - LICENSES/exceptions/.gitignore

    - LICENSES/other/.gitignore


It looks like this is due to matching the pattern '-o size 0' in the
top-level barebox makefile under the distclean target.

Is this the desired behavior? If not, I can go ahead and submit a
patch that cleans up that target.

Thanks,
Geordan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
