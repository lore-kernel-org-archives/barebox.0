Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zu0CR-0001sE-NJ
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 15:42:12 +0000
Received: by wijp11 with SMTP id p11so94920015wij.0
 for <barebox@lists.infradead.org>; Wed, 04 Nov 2015 07:41:49 -0800 (PST)
Received: from gmail.com (p578a7230.dip0.t-ipconnect.de. [87.138.114.48])
 by smtp.gmail.com with ESMTPSA id 186sm29356912wmp.10.2015.11.04.07.41.48
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Wed, 04 Nov 2015 07:41:48 -0800 (PST)
Date: Wed, 4 Nov 2015 16:41:42 +0100
From: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Message-ID: <20151104154142.GA27677@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Source command with zero-sized files
To: barebox@lists.infradead.org

Using source command (source <file> or . <file>) on zero-sized files crash barebox.
Can anyone confirm this?

Thanks

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
