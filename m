Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oxbe9-0004SV-Ae
	for barebox@lists.infradead.org; Mon, 20 Sep 2010 08:22:46 +0000
Received: by wwb24 with SMTP id 24so4391411wwb.18
	for <barebox@lists.infradead.org>; Mon, 20 Sep 2010 01:22:44 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <AANLkTimw-1=r7yLe4dT6=TVFBtePZXRdfjz08ptt0H3D@mail.gmail.com>
	<20100920080231.GB32018@game.jcrosoft.org>
Date: Mon, 20 Sep 2010 10:22:37 +0200
In-Reply-To: <20100920080231.GB32018@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Mon, 20 Sep 2010 10:02:31 +0200")
Message-ID: <87sk143jua.fsf@macbook.be.48ers.dk>
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
Subject: Re: dm9601 USB Network Controller
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

>>>>> "Jean-Christophe" == Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

Hi,

 >> Does barebox support Davicom 9601 USB Network Controller?
 >> 
 >> Would like to tftp over this USB gadget. Would suit boards wihtout 
 >> Ethernet Phy.
 Jean-Christophe> no but we have asix usb

 Jean-Christophe> it will be easy to add

Yeah, the dm9601 hw is pretty simple.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
