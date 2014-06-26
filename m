Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X06IR-0005eu-Mn
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 09:48:48 +0000
Received: by mail-wg0-f51.google.com with SMTP id x12so3252834wgg.34
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 02:48:25 -0700 (PDT)
Date: Thu, 26 Jun 2014 11:48:18 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140626094815.GA10481@omega>
References: <1403772557-28482-3-git-send-email-holgerschurig@gmail.com>
 <20140626093701.GA9619@omega>
 <CAOpc7mFLUNHSdjhiuSqsxQTk1Pd4M_LJXy9Dgw0eK4G_3GzAZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mFLUNHSdjhiuSqsxQTk1Pd4M_LJXy9Dgw0eK4G_3GzAZg@mail.gmail.com>
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
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jun 26, 2014 at 11:43:10AM +0200, Holger Schurig wrote:
> Your patch alone isn't all that's needed, the definition must still be
> uncommented. Otherwise we'll get:
> 
> drivers/of/base.c:1700:5: error: redefinition of 'of_add_memory'
> include/of.h:233:50: note: previous definition of 'of_add_memory' was here

Yep you are right. Sorry :-)

Another solution would be to move the implementation for mem_generic in
a seperate file which depends on CONFIG_OFTREE_MEM_GENERIC. This would
work, but I don't know if we really need that to solve that, I think not.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
