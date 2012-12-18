Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TkwPy-0004Ra-KB
 for barebox@lists.infradead.org; Tue, 18 Dec 2012 12:37:07 +0000
Date: Tue, 18 Dec 2012 13:37:01 +0100
From: Teresa =?iso-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Message-ID: <20121218123701.GA5466@idefix.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2012.12.0: pcm049 is broken
To: barebox@lists.infradead.org

Hello,

since commit 1dbfd5ed82fd2b6b0ba6df98e2e23aaf3cd1a197
ARM: Support multiple ARM architectures
the MLO of pcm049 doesn't start up. It seems to be a problem with thumb-2.
When I disable thumb-2 and shrink the image with also disabling mtd support,
the MLO works again. And mtd is not the problem...

Any ideas?

Regards,
Teresa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
