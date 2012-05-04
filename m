Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQG88-0002LC-SP
 for barebox@lists.infradead.org; Fri, 04 May 2012 10:52:57 +0000
Received: by lbbgg6 with SMTP id gg6so2424450lbb.36
 for <barebox@lists.infradead.org>; Fri, 04 May 2012 03:52:55 -0700 (PDT)
Message-ID: <4FA3B504.6010408@gmail.com>
Date: Fri, 04 May 2012 16:52:52 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <201205031941.00662.jbe@pengutronix.de> <4FA3A3BE.2040607@gmail.com>
 <201205041158.25104.jbe@pengutronix.de>
In-Reply-To: <201205041158.25104.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/4] Fine split S3C arch dependencies from generic code
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 04.05.2012 15:58, Juergen Beisert wrote:
> No it hasn't. Believe me. Using the old 1 bit ECC (and also the 4 bit ECC) 
> makes no sense any more. Even the built-in iROM forces the 8 bit ECC mode if 
> you want to boot it from NAND. And I guess it is the same on the S5P CPU.

Ok, how about using nand-s3c.c for generic read and write procedures
(same for all S3C and S5P) and adding nand-s3c-mlc.c for MLC ECC support
only?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
