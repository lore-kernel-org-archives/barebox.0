Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WiNlt-0008SF-Kl
 for barebox@lists.infradead.org; Thu, 08 May 2014 12:49:58 +0000
Received: from mail176.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CA6AB10084A7
 for <barebox@lists.infradead.org>; Thu,  8 May 2014 14:40:23 +0200 (CEST)
Date: Thu, 8 May 2014 14:43:15 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140508124315.GC15426@ns203013.ovh.net>
References: <20140505145512.133932fc3ee2247b660638c2@gmail.com>
 <20140505122944.GA1567@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140505122944.GA1567@mail.gnudd.com>
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
Subject: Re: TODO: Rewrite network stack.
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org

On 14:29 Mon 05 May     , Alessandro Rubini wrote:
> 
> > The most notable is lwIP (http://savannah.nongnu.org/projects/lwip/).
> 
> I'm not happy at all about this code base, it looks quite ugly and
> old-fashioned. It's not the barebox kind of quality. I'd stay with the
> current code rather than lwip, despite the number of users.
> 
> If any, I'd evaluate picotcp (https://github.com/tass-belgium/picotcp).

uIP  too

Best Regards,
J.
> 
> /alessandro
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
