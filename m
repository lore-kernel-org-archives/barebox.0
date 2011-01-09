Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbriQ-0006Uc-V9
	for barebox@lists.infradead.org; Sun, 09 Jan 2011 09:37:37 +0000
Received: by eyd9 with SMTP id 9so9021441eyd.36
	for <barebox@lists.infradead.org>; Sun, 09 Jan 2011 01:37:31 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <AANLkTinmrmkQgW4-EJ6O0q_5TU7tdxj0FbYFBYVfNXPq@mail.gmail.com>
	<20110108101936.GA11726@game.jcrosoft.org>
Date: Sun, 09 Jan 2011 10:37:27 +0100
In-Reply-To: <20110108101936.GA11726@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Sat, 8 Jan 2011 11:19:36 +0100")
Message-ID: <87wrmefmeg.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
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
Subject: Re: USB ethernet
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

>>>>> "Jean-Christophe" == Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

 >> Does barebox support USB NICs like Davicom dm9601?
 >> 
 >> If not, is it trivial to add the support?

 Jean-Christophe> yeah it's easy to add
 Jean-Christophe> and your already have axis support

And with the usbnet stuff it should be pretty trivial to port my dm9601
driver.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
