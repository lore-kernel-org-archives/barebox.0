Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22b.google.com ([2607:f8b0:4002:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X05aQ-0004Fq-Lg
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 09:03:19 +0000
Received: by mail-yk0-f171.google.com with SMTP id 200so1824442ykr.16
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 02:02:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
Date: Thu, 26 Jun 2014 11:02:56 +0200
Message-ID: <CAOpc7mFi+TRbnTgtoAdnHgGpQ5=aPUusADk1PfhH9p5qAyaCRQ@mail.gmail.com>
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
Subject: Re: New Documentation for barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

nice !


I merged remotes/origin/doc into my local checkout of
remotes/origin/next and did "make docs". I got one warning:

schurig@laptop:~/d/mkarm/barebox$ make docs
Making output directory...
Running Sphinx v1.1.2
loading pickled environment... not yet created
building [html]: targets for 204 source files that are out of date
updating environment: 204 added, 0 changed, 0 removed
reading sources... [100%] user/variables
/home/schurig/d/mkarm/barebox/Documentation/devicetree/index.rst:6:
WARNING: toctree glob pattern u'bindings/barebox/*' didn't match any
documents
looking for now-outdated files... none found
pickling environment... done
checking consistency... done
preparing documents... done
writing output... [100%] user/variables
writing additional files... genindex search
copying static files... done
dumping search index... done
dumping object inventory... done
build succeeded, 1 warning.

and in fact, there is no Documentation/devicetree/bindings/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
