Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-out.m-online.net ([212.18.0.9])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P37wH-00037h-UF
	for barebox@lists.infradead.org; Tue, 05 Oct 2010 13:52:19 +0000
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Tue, 05 Oct 2010 15:52:13 +0200
Message-Id: <20101005135213.24F871539A0@gemini.denx.de>
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
Subject: Code "borrowed" without attribution to original authors
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

it has been brought to my attention that lately a number of commits
have been added to the BareBox repository (and released as BareBox
v2010.10.0) that contain literal copies of hundreds of lines of code
taken from the U-Boot project.

While this is OK in general (U-Boot is covered by the GPLv2/GPLv2+),
in this case the code has been added to the BareBox repository
without any attribution to the original authors.  Instead, the
respective commits carry only SoB lines like these:

	Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
	Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Commits that very clearly show this problem are for example:

 d424ce7  image: factorise image printing contents
 0ceafe1  Replace direct header access with the API routines
 aba80a2  image: rename IH_CPU to IH_ARCH to be more concistant
 7bd7d59  image: factorise string helper

In the examples given, most of the copied code was actually written by
Marian Balakowicz and should be attributed to him.  Neither
Jean-Christophe nor Sascha have any credits on that code.


We all have been working long enough in free and open source software
projects that I can assume you are well aware of the basic principles
of open source software licensing and the requirement to attribute
code to its original authors.


Jean-Christophe, may I please ask you to stop copying code from other
projects without proper attribution?


Sascha, may I please ask you to make sure that proper attribution of
all such copied code gets added to the BareBox repository and released
code?


[Please make sure to keep me on cc: to any replies as I am not
subscribed to the BareBox mailing list.]


Thanks.

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
By the way, ALL software projects are done by iterative  prototyping.
Some companies call their prototypes "releases", that's all.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
