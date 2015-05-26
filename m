Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x236.google.com ([2a00:1450:400c:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YxGyu-0004Sp-0V
 for barebox@lists.infradead.org; Tue, 26 May 2015 15:41:28 +0000
Received: by wghq2 with SMTP id q2so100938658wgh.1
 for <barebox@lists.infradead.org>; Tue, 26 May 2015 08:41:06 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 26 May 2015 17:41:06 +0200
Message-ID: <CABP==CLFeG59X3OyMxJrxTzWDg-Xm8dURb-k-JXu3as+pY5mKA@mail.gmail.com>
From: Jean-Christophe BEGUE <begue.jc@gmail.com>
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
Subject: Programatically write in a file in the environnent with a hush command
To: barebox@lists.infradead.org

Hello,

I'm trying to pass a value from Barebox to the operating system, using
the usreland command bareboxenv -l.

My problem is : How should I write that status from my hush barebox script?

echo $mystatus > /env/data/my_status_file

The above command doesn't work as '>' is not implemented.

I've the feeling that I'm missing something?

Jean-Christophe BEGUE

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
