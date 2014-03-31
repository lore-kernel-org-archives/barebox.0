Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from homie.mail.dreamhost.com ([208.97.132.208]
 helo=homiemail-a62.g.dreamhost.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUbtO-0008SE-6h
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 13:04:47 +0000
Received: from homiemail-a62.g.dreamhost.com (localhost [127.0.0.1])
 by homiemail-a62.g.dreamhost.com (Postfix) with ESMTP id B4917634087
 for <barebox@lists.infradead.org>; Mon, 31 Mar 2014 06:04:22 -0700 (PDT)
Received: from radagast (unknown [203.106.150.150])
 (using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: hussein@unixcat.org)
 by homiemail-a62.g.dreamhost.com (Postfix) with ESMTPSA id 65512634082
 for <barebox@lists.infradead.org>; Mon, 31 Mar 2014 06:04:22 -0700 (PDT)
Received: from hussein by radagast with local (Exim 4.80)
 (envelope-from <hussein@radagast>) id 1WUbsx-000298-00
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 21:04:19 +0800
Date: Mon, 31 Mar 2014 21:04:18 +0800
From: Nur Hussein <hussein@unixcat.org>
Message-ID: <20140331130418.GA3113@radagast>
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
Subject: Building and booting Barebox on Pandaboard
To: barebox@lists.infradead.org

Dear all,

I am using barebox-2014.03.0 to try to boot on a Pandaboard ES. I have followed the instructions in the docs:

http://wiki.barebox.org/doku.php?id=boards:omap

I could not however find a barebox.bin.ift file in the output, so I guessed and went with the barebox-flash-image linked file and named it MLO.

It did not work. The Pandaboard ES did not boot. 

Is the documentation outdated? Is there something else I should be doing?

-- 
Nur Hussein
http://unixcat.org

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
