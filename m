Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relaygw4-12.mclink.it ([213.21.178.179])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WhI29-0007Ax-E5
 for barebox@lists.infradead.org; Mon, 05 May 2014 12:30:14 +0000
Received: from [195.110.128.82] (HELO smtpoutgw3.mclink.it)
 by relaygw4-12.mclink.it (CommuniGate Pro SMTP 6.0.6)
 with ESMTP id 18696799 for barebox@lists.infradead.org;
 Mon, 05 May 2014 14:29:47 +0200
Date: Mon, 5 May 2014 14:29:44 +0200
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20140505122944.GA1567@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140505145512.133932fc3ee2247b660638c2@gmail.com>
References: <20140505145512.133932fc3ee2247b660638c2@gmail.com> 
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
To: antonynpavlov@gmail.com
Cc: barebox@lists.infradead.org

> The most notable is lwIP (http://savannah.nongnu.org/projects/lwip/).

I'm not happy at all about this code base, it looks quite ugly and
old-fashioned. It's not the barebox kind of quality. I'd stay with the
current code rather than lwip, despite the number of users.

If any, I'd evaluate picotcp (https://github.com/tass-belgium/picotcp).

/alessandro

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
