Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoulA-0003g6-Sm
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 12:43:57 +0000
Received: by mail-wi0-f175.google.com with SMTP id hi5so787130wib.14
 for <barebox@lists.infradead.org>; Fri, 06 Dec 2013 04:43:32 -0800 (PST)
Date: Fri, 6 Dec 2013 13:43:28 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131206124327.GA22853@omega>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
 <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
 <20131206123925.GD24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131206123925.GD24559@pengutronix.de>
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
Subject: Re: How to debug Ethernet connectivity
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 06, 2013 at 01:39:25PM +0100, Sascha Hauer wrote:
> On Fri, Dec 06, 2013 at 01:18:52PM +0100, Atilla Filiz wrote:
> > Sorry, figured it out. Just most verbose output is funny as well:
> > :/ miitool -vvv /dev/mc13xxx
> 
> Don't know what miitool does in this case, but mc13xxx is not your phy,
> it's your PMIC.
> 

oh, doesn't realize that :D. So reading zeros can make sense in some
offset. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
