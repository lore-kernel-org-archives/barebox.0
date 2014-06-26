Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x235.google.com ([2607:f8b0:4002:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X06DL-0003BV-JT
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 09:43:32 +0000
Received: by mail-yk0-f181.google.com with SMTP id 9so1828896ykp.40
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 02:43:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140626093701.GA9619@omega>
References: <1403772557-28482-3-git-send-email-holgerschurig@gmail.com>
 <20140626093701.GA9619@omega>
Date: Thu, 26 Jun 2014 11:43:10 +0200
Message-ID: <CAOpc7mFLUNHSdjhiuSqsxQTk1Pd4M_LJXy9Dgw0eK4G_3GzAZg@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH 2/4] sandbox: only access of_add_memory_bank if it's
 defined
To: Alexander Aring <alex.aring@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Your patch alone isn't all that's needed, the definition must still be
uncommented. Otherwise we'll get:

drivers/of/base.c:1700:5: error: redefinition of 'of_add_memory'
include/of.h:233:50: note: previous definition of 'of_add_memory' was here

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
