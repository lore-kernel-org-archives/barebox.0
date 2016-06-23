Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFz7P-0002nP-VY
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 07:32:08 +0000
Received: by mail-wm0-x243.google.com with SMTP id r201so8328377wme.0
 for <barebox@lists.infradead.org>; Thu, 23 Jun 2016 00:31:47 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
Date: Thu, 23 Jun 2016 09:31:44 +0200
Message-ID: <8760t0pdi7.fsf@gmail.com>
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
Subject: Re: [PATCH 3/3] GUI: Add fbtest command
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org
Cc: Andrey Gusakov <andrey.gusakov@cogentembedded.com>

I'm unsure if an "fbtest" command will be helpful.

Why don't you expose the various primitives (lines, circles, lines) with
some commands?  Then people could use this in their boot scripts,
including the equivalent of an fbtest program.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
