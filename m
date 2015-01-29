Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f48.google.com ([74.125.82.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGlA2-0002pt-Cv
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 09:13:15 +0000
Received: by mail-wg0-f48.google.com with SMTP id x12so22693904wgg.7
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 01:12:51 -0800 (PST)
Received: from gmail.com (p578a7230.dip0.t-ipconnect.de. [87.138.114.48])
 by mx.google.com with ESMTPSA id fi10sm1580313wib.13.2015.01.29.01.12.50
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
 Thu, 29 Jan 2015 01:12:50 -0800 (PST)
Date: Thu, 29 Jan 2015 10:12:46 +0100
From: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Message-ID: <20150129091229.GA424@gmail.com>
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
Subject: Access to first 0x1000 byte on imx53/imx6
To: barebox@lists.infradead.org

Hello,

If I try to read from first 4k RAM on imx53/imx6, with md or from code,
barebox show stacktrace with mesage:
"unable to handle NULL pointer dereference at address 0x...".
Is it possible in some way do that?

Thanks,
Slawa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
