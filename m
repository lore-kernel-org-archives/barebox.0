Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2HMF-0006S3-J8
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 10:01:44 +0000
Date: Wed, 2 Jul 2014 12:01:14 +0200 (CEST)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
In-Reply-To: <20140702063000.GB14257@pengutronix.de>
Message-ID: <alpine.DEB.2.10.1407021058460.8594@9VTHT2J-D520>
References: <1502046103.916753.1404130899228.open-xchange@oxbsltgw09.schlund.de>
 <20140701065409.GO14257@pengutronix.de>
 <alpine.DEB.2.10.1407011407550.7233@9VTHT2J-D520>
 <20140702063000.GB14257@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] boot: show all boot sources
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Rolf Evers-Fischer <embedded24@evers-fischer.de>



On Wed, 2 Jul 2014, Sascha Hauer wrote:

> I mean the intention is that
> 
> boot -l <source1> <source2>
> 
> lists all sources specified, whereas
> 
> boot -l
> 
> lists everything from $global.boot.default
> 

Thank you for this clarification. Now I know, how I can list more than one 
bootsource in bootmenu: I simply have to change my $global.boot.default 
entry from e.g.

global.boot.default=sd

to

global.boot.default="sd usb net"

I have just confirmed that it works! And it doesn't need any sourcecode 
patch.


Best regards,
 Rolf

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
