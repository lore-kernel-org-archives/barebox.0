Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkCA4-0001HQ-Pw
 for barebox@lists.infradead.org; Tue, 13 May 2014 12:50:25 +0000
Received: by mail-la0-f54.google.com with SMTP id pv20so233583lab.27
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 05:50:00 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20140513110326.GA29062@omega>
References: <1566538733.276756.1398269380974.open-xchange@email.1und1.de>
 <20140424065848.GV5858@pengutronix.de>
 <1748480871.292241.1398329548811.open-xchange@email.1und1.de>
 <1987921723.106566.1398866884871.open-xchange@email.1und1.de>
 <1398984618.20734.13.camel@mars>
 <1601166290.269079.1399292035560.open-xchange@email.1und1.de>
 <2127881536.642328.1399899433007.open-xchange@email.1und1.de>
 <20140513110326.GA29062@omega>
Date: Tue, 13 May 2014 14:49:56 +0200
Message-ID: <1399985396.17608.95.camel@mars>
Mime-Version: 1.0
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
Subject: Re: New driver crashes with "unable to handle paging request"
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org, Rolf Evers-Fischer <embedded24@evers-fischer.de>

Hey Alex

On Tue, 2014-05-13 at 13:03 +0200, Alexander Aring wrote:
> This was one year ago...

The port (with only host support) is that old, but simply due to lack of
time I haven't fixed the hacks in there. For example some delays need
proper wait_on_timeout(), therefore a reference manual would be nice.

I hope to find some time next weekend pushing the stuff to github or as
a RFC-Patchset.

Keep calm


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
